import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infou/view/main_screen.dart';
import 'package:infou/view/register_screen.dart';
import 'dart:async';
import 'package:google_sign_in/google_sign_in.dart';
import '../class/api_url.dart';
import '../class/current_token.dart';
import 'package:http/http.dart' as http;
import '../view/beginning_login_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email', 'openid']);

  bool _checkGoogleSign = false;

  //1 : 구글에 로그인은 되어있고 회원가입도 되어있는 상태
  //2 : 구글에 로그인은 되어있지만 회원가입은 "안"되어 상태
  //3 : 구글에 로그인 자체가 안되어 있는 상태.
  // Future<int> _checkGoogleSignIn() async {
  //   CurrentToken _currentToken = CurrentToken();
  //   GoogleSignInAccount? _login = await _googleSignIn.signIn();
  //   // Check if the user is already signed in
  //   //먼저 구글에 로그인이 되어있는지 확인하고,
  //   _checkGoogleSign = await _googleSignIn.isSignedIn();
  //   if (_checkGoogleSign == false) {
  //     return 3;
  //   }
  //   _currentToken.changeAuthId(_login!.id);
  //   _currentToken.changeAuthEmail(_login!.email);
  //   //이미 회원가입 (= authId로 api에서 token이 불러올수 있는 상태)된 상태인지 확인하기 위해 체크한다.
  //   print("@#@#@#");
  //   print("current Sign In state is " + _checkGoogleSign.toString());
  //   //return await _sendTokenToBackend(_currentToken.getAuthId());
  //   //임시 authId.
  //   return await _sendTokenToBackend('123');
  // }

  //1 : 구글에 로그인은 되어있고 회원가입도 되어있는 상태
  //2 : 구글에 로그인은 되어있지만 회원가입은 "안"되어 상태
  //3 : 구글에 로그인 자체가 안되어 있는 상태.
  // Future<int> _sendTokenToBackend(String authId) async {
  //   CurrentToken _currentToken = CurrentToken();
  //   // Mock API endpoint for demonstration
  //   String apiUrl = ApiUrl.apiUrl + '/api/v1/auth/login';
  //   print(apiUrl);
  //   print(authId);
  //   var url = Uri.parse(apiUrl);
  //   String requestBody = jsonEncode({"authId": authId});
  //   try {
  //     //login에 authId를 보내서 token이 정상적으로 오는지 확인함.
  //     var response = await http.post(
  //       url,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'accept': 'application/json'
  //       },
  //       body: requestBody,
  //     );
  //     print('Token sent to backend successfully in backend');
  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> jsonData =
  //           (jsonDecode(utf8.decode(response.bodyBytes)));
  //       //해당 authId가 서버에 없음 = 회원가입이 안된 상태
  //       if (jsonData['isSuccess'] == false) {
  //         //회원가입 페이지로 이동
  //         return 2;
  //       }
  //       //authId가 존재함 = Token이 정상적으로 reponse됨.
  //       else {
  //         print("succeess");
  //         //각각의 Token을 저장함.
  //         _currentToken.changeAccessToken(jsonData['result']['accessToken']);
  //         _currentToken.changeRefreshToken(jsonData['result']['refreshToken']);
  //         return 1;
  //       }
  //     } else {
  //       // Handle error response from backend
  //       print('Error sending token to backend: ${response.body}');
  //     }
  //   } catch (error2) {
  //     print('Error sending token to backend: $error2');
  //     // Handle network or server errors
  //   }
  //   //서버 자체연결이 안되면 초기 화면으로 이동
  //   return 3;
  // }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              main_screen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ));
      });
    });

    print("^^");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 300, // 이미지의 폭
                  height: 300, // 이미지의 높이
                  fit: BoxFit.contain, // 이미지의 크기 조절 옵션
                ),
                SizedBox(
                  height: 30,
                ),
                /*
                Row(
                  children: [
                    // GradientText(
                    //   "made by 졸업 예정자들",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //       fontSize: 20,
                    //       fontFamily: 'righteous',
                    //       fontWeight: FontWeight.w800),
                    //   colors: [
                    //     Colors.blueAccent,
                    //     Colors.blueAccent,
                    //   ],
                    // ),
                  ],
                )*/
              ],
            )
          ],
        ),
      ),
    );
  }
}
