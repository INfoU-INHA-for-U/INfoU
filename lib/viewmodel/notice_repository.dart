import 'package:myapp/model/bookmark_response.dart';
import 'package:myapp/model/normal_response.dart';
import 'package:myapp/model/notice_detail_response.dart';
import 'package:myapp/model/notice_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class noticeRepository {
  final String jwtToken;
  late Map<String, String> headers;

  // 생성자에서 jwtToken을 사용하여 헤더 초기화
  noticeRepository(this.jwtToken) {
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

  Future<NoticeResponse?> notices() async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/notices';

    // 쿼리 데이터 설정
    String queryType = 'type';
    String queryData = '국어교육과';

    String page = '0';
    String size = '5';

    // URL에 쿼리 파라미터 추가
    Uri uri = Uri.parse('$url?$queryType=$queryData&page=$page&size=$size');

    // HTTP GET 요청 보내기
    try {
      var response = await http.get(
        uri,
        headers: headers,
      );
      depugPrint(uri, response);

      NoticeResponse noticeResponse =
          NoticeResponse.fromJson(json.decode(utf8.decode(response.bodyBytes)));

      // 생성된 NoticeResponse 객체 반환
      return noticeResponse;
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }

  Future<BookmarkResponse?> noticesBookmark() async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/notices/bookmark';

    // JWT 토큰 변수 설정

    String page = '0';
    String size = '5';
    String sort = 'time,desc';

    // URL에 쿼리 파라미터 추가

    Uri uri = Uri.parse('$url?page=$page&size=$size&sort=$sort');

    // HTTP GET 요청 보내기
    try {
      var response = await http.get(
        uri,
        headers: headers,
      );
      depugPrint(uri, response);

      BookmarkResponse Response = BookmarkResponse.fromJson(
          json.decode(utf8.decode(response.bodyBytes)));

      // 생성된 NoticeResponse 객체 반환
      return Response;
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }

  Future<BookmarkResponse?> noticeSearch(String keyword) async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/notices/search';

    String page = '0';
    String size = '5';
    String type = '인하대학교';

    // URL에 쿼리 파라미터 추가

    Uri uri =
        Uri.parse('$url?keyword=$keyword&type=$type&page=$page&size=$size');

    // HTTP GET 요청 보내기
    try {
      var response = await http.get(
        uri,
        headers: headers,
      );
      depugPrint(uri, response);

      BookmarkResponse Response = BookmarkResponse.fromJson(
          json.decode(utf8.decode(response.bodyBytes)));

      // 생성된 NoticeResponse 객체 반환
      return Response;
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }

  Future<BookmarkResponse?> noticeSearchBookmark(String keyword) async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/notices/search/bookmark';

    String page = '0';
    String size = '5';

    // URL에 쿼리 파라미터 추가

    Uri uri = Uri.parse('$url?keyword=$keyword&page=$page&size=$size');

    // HTTP GET 요청 보내기
    try {
      var response = await http.get(
        uri,
        headers: headers,
      );
      depugPrint(uri, response);

      BookmarkResponse Response = BookmarkResponse.fromJson(
          json.decode(utf8.decode(response.bodyBytes)));

      // 생성된 NoticeResponse 객체 반환
      return Response;
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }

  Future<BookmarkResponse?> noticeRecommend() async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/notices/recommend';

    String page = '0';
    String size = '5';
    String sort = 'time,desc';

    // URL에 쿼리 파라미터 추가

    Uri uri = Uri.parse('$url?page=$page&size=$size&sort=$sort');

    // HTTP GET 요청 보내기
    try {
      var response = await http.get(
        uri,
        headers: headers,
      );
      depugPrint(uri, response);

      BookmarkResponse Response = BookmarkResponse.fromJson(
          json.decode(utf8.decode(response.bodyBytes)));

      // 생성된 NoticeResponse 객체 반환
      return Response;
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }

  Future<NormalResponse?> noticeLog(String noticeId) async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/notices/log';

    // body
    Map<String, String> body = {
      'noticeId': noticeId,
    };

    Uri uri = Uri.parse('$url?noticeId=$noticeId');

    // HTTP Post 요청 보내기
    try {
      var response = await http.post(
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

  Future<NormalResponse?> noticeBookmark(String noticeId) async {
    // 요청할 URL 설정
    String url = 'http://165.246.44.237:8080/api/v1/notices/bookmark';

    // body
    Map<String, String> body = {
      'noticeId': noticeId,
    };

    Uri uri = Uri.parse('$url?noticeId=$noticeId');

    // HTTP GET 요청 보내기
    try {
      var response = await http.post(
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
