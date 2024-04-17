import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/class/current_token.dart';
import 'package:http/http.dart' as http;
import '../class/api_url.dart';

//return 값
//1 : refresh-token으로부터 새로운 token을 정상적으로 받음 -> 이후 다시 api요청
//2 : refresh-token으로부터 새로운 token을 정상적으로 받지 "못함" -> 초기 로그인 화면
Future<bool> refreshToken() async {
  GoogleSignIn _googleSignIn = GoogleSignIn();
  CurrentToken _currentToken = CurrentToken();
  // Mock API endpoint for demonstration
  String apiUrl = ApiUrl.apiUrl + '/api/v1/auth/refresh-token';
  var url = Uri.parse(apiUrl);

  try {
    //login에 authId를 보내서 token이 정상적으로 오는지 확인함.
    var response = await http.post(
      url,
      headers: {'Authorization': 'Bearer ' + _currentToken.getRefreshToken()},
    );
    print('Token sent to refresh-backend successfully');
    if (response.statusCode == 200) {
      // Handle successful response from backend
      print('Response data: ${utf8.decode(response.bodyBytes)}');
      try {
        if (response.statusCode == 200) {
          Map<String, dynamic> jsonData =
              (jsonDecode(utf8.decode(response.bodyBytes)));
          //해당 authId가 서버에 없음 = 회원가입이 안된 상태
          //refresh-token도 유효하지 않을때
          if (jsonData['isSuccess'] == false) {
            //원래 연결되어 있던 구글 계정을 로그아웃시킴
            _googleSignIn.signOut();
            return false;
          }
          //refresh-token이 유효할때
          else {
            //각각의 Token을 저장함.
            _currentToken.changeAccessToken(jsonData['result']['accessToken']);
            _currentToken
                .changeRefreshToken(jsonData['result']['refreshToken']);
            return true;
          }
        } else {
          // Handle error response from backend
          print('Error sending token to refresh-backend: ${response.body}');
        }
      } catch (error) {
        print(error);
      }
    }
  } catch (error2) {
    print('Error sending token to refresh-backend: $error2');
    // Handle network or server errors
  }
  return false;
}
