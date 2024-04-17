import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:infou/view/register_screen.dart';
import '../class/current_token.dart';
import '../class/jwt_token.dart';
import '../class/api_url.dart';

import 'main_screen.dart';

class beginning_login_screen extends StatefulWidget {
  const beginning_login_screen({super.key});

  @override
  State<beginning_login_screen> createState() => _beginning_login_screenState();
}

class _beginning_login_screenState extends State<beginning_login_screen> {
  //token정보를 저장하는 class선언
  CurrentToken _currentToken = CurrentToken();
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email', 'openid']);

  Future<int> _sendTokenToBackend(String authId) async {
    CurrentToken _currentToken = CurrentToken();
    // Mock API endpoint for demonstration
    String apiUrl = ApiUrl.apiUrl + '/api/v1/auth/login';
    var url = Uri.parse(apiUrl);

    try {
      //login에 authId를 보내서 token이 정상적으로 오는지 확인함.
      var response = await http.post(
        url,
        body: {'authId': authId},
      );
      print('Token sent to backend successfully');
      if (response.statusCode == 200) {
        // Handle successful response from backend
        print('Response data: ${utf8.decode(response.bodyBytes)}');
        try {
          if (response.statusCode == 200) {
            Map<String, dynamic> jsonData =
                (jsonDecode(utf8.decode(response.bodyBytes)));
            //해당 authId가 서버에 없음 = 회원가입이 안된 상태
            if (jsonData['isSuccess'] == false) {
              return 2;
            }
            //authId가 존재함 = Token이 정상적으로 reponse됨.
            else {
              //각각의 Token을 저장함.
              _currentToken
                  .changeAccessToken(jsonData['result']['accessToken']);
              _currentToken
                  .changeRefreshToken(jsonData['result']['refreshToken']);
              return 1;
            }
          } else {
            // Handle error response from backend
            print('Error sending token to backend: ${response.body}');
          }
        } catch (error) {
          print(error);
        }
      }
    } catch (error2) {
      print('Error sending token to backend: $error2');
      // Handle network or server errors
    }
    return 3;
  }

  GoogleSignInAccount? _currentUser;

  //구글 로그인 하는 곳, 이후 앱 자체의 회원가입 창으로 넘어감
  Future<void> _googleSignInLoginScreen() async {
    late int registerResult;

    //구글에 로그인
    GoogleSignInAccount? _login = await _googleSignIn.signIn();
    _currentToken.changeAuthId(_login!.id);
    print('current user email is ' + _login!.email);
    print('current user authId is ' + _login!.id);
    registerResult = await _sendTokenToBackend(_login!.id);
    //앱 자체 회원가입 창으로 넘어감
    //여기선 이미 로그인이 된 상태가 보장되므로, 1 (= main_screen or) or (2,3) (= 앱 자체 회원가입) 으로 화면 이동을 정할 수 있다.
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => registerResult == 1
                ? main_screen(jwt: "")
                : register_screen_nickname()));
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: _height / 4),
          Container(
            height: _height / 7,
            child: Center(
                child: Image(image: AssetImage('assets/images/logo.png'))),
          ),
          SizedBox(height: _height / 10),
          Text(
            '인하대학교 계정으로 로그인하기',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Container(
              padding:
                  EdgeInsets.fromLTRB(_width / 5 + 10, 0, _width / 5 + 10, 0),
              margin: EdgeInsets.only(top: 5),
              height: _height / 17,
              child: Center(
                  child: GestureDetector(
                onTap: () => _googleSignInLoginScreen(),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black54, width: 1.5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(4, 4, 0, 4),
                          child: Image.network(
                            'http://pngimg.com/uploads/google/google_PNG19635.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 1.0,
                        ),
                        Text('Sign in with Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))
                      ],
                    )),
              )))
        ],
      ),
    ));
  }
}
