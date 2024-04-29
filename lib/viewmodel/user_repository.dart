import 'package:infou/model/bookmark_response.dart';
import 'package:infou/model/normal_response.dart';
import 'package:infou/model/notice_detail_response.dart';
import 'package:infou/model/notice_response.dart';
import 'package:http/http.dart' as http;
import 'package:infou/model/user_detail.dart';
import 'dart:convert';

import 'package:infou/model/user_reward_response.dart';

class userRepository {
  final String jwtToken;
  late Map<String, String> headers;

  // 생성자에서 jwtToken을 사용하여 헤더 초기화
  userRepository(this.jwtToken) {
    headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $jwtToken',
    };
  }

  depugPrint(Uri uri, var response) {
    print('1. Request URL : $uri');
    print('2. Response status: ${response.statusCode}');
    print('3. Response body: ${utf8.decode(response.bodyBytes)}');
  }

  Future<RewardContent?> userReward() async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/users/reward';

    String page = '0';
    String size = '5';

    // URL에 쿼리 파라미터 추가
    Uri uri = Uri.parse('$url?page=$page&size=$size');

    // HTTP GET 요청 보내기
    try {
      var response = await http.get(
        uri,
        headers: headers,
      );
      depugPrint(uri, response);

      RewardContent userResponse =
          RewardContent.fromJson(json.decode(utf8.decode(response.bodyBytes)));

      // 생성된 NoticeResponse 객체 반환
      return userResponse;
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }

  Future<NormalResponse?> userNick() async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/users/nick';

    String page = '0';
    String size = '5';

    // URL에 쿼리 파라미터 추가
    Uri uri = Uri.parse('$url');

    // HTTP GET 요청 보내기
    try {
      var response = await http.get(
        uri,
        headers: headers,
      );
      depugPrint(uri, response);

      NormalResponse userResponse =
          NormalResponse.fromJson(json.decode(utf8.decode(response.bodyBytes)));

      // 생성된 NoticeResponse 객체 반환
      return userResponse;
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }

  Future<UserDetail?> userDetail() async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/users/detail';

    String page = '0';
    String size = '5';

    // URL에 쿼리 파라미터 추가
    Uri uri = Uri.parse('$url');

    // HTTP GET 요청 보내기
    try {
      var response = await http.get(
        uri,
        headers: headers,
      );
      depugPrint(uri, response);

      UserDetail userResponse =
          UserDetail.fromJson(json.decode(utf8.decode(response.bodyBytes)));

      // 생성된 NoticeResponse 객체 반환
      return userResponse;
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }

  Future<NormalResponse?> noticeLog(
    String name,
    String grade,
    String major,
    String selectNotice,
  ) async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/users';

    // body
    Map<String, dynamic> body = {
      'name': name,
      'grade': grade,
      'major': major,
      'selectNotice': selectNotice,
    };

    Uri uri = Uri.parse('$url');

    // HTTP Post 요청 보내기
    try {
      var response = await http.put(
        uri,
        headers: headers,
        body: jsonEncode(body),
      );
      depugPrint(uri, response);

      NormalResponse Response =
          NormalResponse.fromJson(json.decode(utf8.decode(response.bodyBytes)));

      // 생성된 NoticeResponse 객체 반환
      return Response;
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }
}
