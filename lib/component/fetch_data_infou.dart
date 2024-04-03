import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/component/refresh_token.dart';

import '../class/api_url.dart';
import '../class/current_token.dart';
import '../class/infou_search.dart';



Future<List<InfouSearch>> getDataInfouSearch(
    String keyword,
    String condition,
    Map<dynamic,dynamic> pageable) async {

  CurrentToken _currentToken = CurrentToken();
  String decodeUrl = ApiUrl.apiUrl
      + '/api/v1/infou/search?keyword=$keyword&condition=$condition'
      + '&page=' + pageable['page']
      + '&size=' + pageable['size']
      + '&sort=' + pageable['sort'][0];
  String _fetch_url = Uri.encodeFull(decodeUrl);
  var url = Uri.parse(_fetch_url);
  while (true) {
    try {
      var headers = {
        'accept': 'application/json',
        'Authorization': 'Bearer ' + _currentToken.getAccessToken()
      };
      var response = await http.get(url, headers: headers);
      print('Response data: ${utf8.decode(response.bodyBytes)}');
      //서버통신 성공
      if (response.statusCode == 200) {
        Map jsonData = (jsonDecode(utf8.decode(response.bodyBytes)));
        List<dynamic> _priorInfouSearch = jsonData['result']['content'];
        //accessToken이 유효하지 않음.
        List<InfouSearch> _infouSearch =
            _priorInfouSearch.map((e) => InfouSearch.fromJson(e)).toList();
        return _infouSearch;
      } else if (response.statusCode == 403) {
        bool _refresh_token_result = await refreshToken();
        //refresh-token도 유효하지 않습니다. -> 초기 로그인 화면으로 이동해야함.
        if (_refresh_token_result == false) {
          print('refresh-token이 유효하지 않습니다.');
          //똥값 보내고 이거 판단해서 초기 로그인 화면으로 이동하면 됨.
          return [];
        } else {
          print('새로운 token을 발급받았습니다');
        }
      }
    } catch (e) {
      // 네트워크 에러 처리
      print('Exception caught: $e');
    }
  }
}

Future<List<InfouSearch>> getDataInfouRecommend(Map<dynamic,dynamic> pageable) async {

  CurrentToken _currentToken = CurrentToken();
  String decodeUrl = ApiUrl.apiUrl
      + '/api/v1/infou/recommend?'
      + '&page=' + pageable['page']
      + '&size=' + pageable['size']
      + '&sort=' + pageable['sort'][0];
  String _fetch_url = Uri.encodeFull(decodeUrl);
  var url = Uri.parse(_fetch_url);

  while (true) {
    try {
      var headers = {
        'accept': 'application/json',
        'Authorization': 'Bearer ' + _currentToken.getAccessToken()
      };
      var response = await http.get(url, headers: headers);
      print('Response data: ${utf8.decode(response.bodyBytes)}');
      //서버통신 성공
      if (response.statusCode == 200) {
        Map jsonData = (jsonDecode(utf8.decode(response.bodyBytes)));
        //?? 이거 어떻게 생겨먹은건가요.. 세부 데이터가
        List<dynamic> _priorInfouSearch = jsonData['result']['content'];
        //accessToken이 유효하지 않음.
        List<InfouSearch> _infouSearch =
            _priorInfouSearch.map((e) => InfouSearch.fromJson(e)).toList();
        return _infouSearch;
      } else if (response.statusCode == 403) {
        bool _refresh_token_result = await refreshToken();
        //refresh-token도 유효하지 않습니다. -> 초기 로그인 화면으로 이동해야함.
        if (_refresh_token_result == false) {
          print('refresh-token이 유효하지 않습니다.');
          //똥값 보내고 이거 판단해서 초기 로그인 화면으로 이동하면 됨.
          return [];
        } else {
          print('새로운 token을 발급받았습니다');
        }
      }
    } catch (e) {
      // 네트워크 에러 처리
      print('Exception caught: $e');
    }
  }
}

Future<List<InfouSearch>> getDataInfouRecent(String keyword,
    String condition,
    Map<dynamic,dynamic> pageable) async {

  CurrentToken _currentToken = CurrentToken();
  String decodeUrl = ApiUrl.apiUrl
      + '/api/v1/infou/recent?'
      + '&page=' + pageable['page']
      + '&size=' + pageable['size']
      + '&sort=' + pageable['sort'][0];
  String _fetch_url = Uri.encodeFull(decodeUrl);
  var url = Uri.parse(_fetch_url);

  while (true) {
    var headers = {
      'accept':'application/json',
      'Authorization' : 'Bearer ' + _currentToken.getAccessToken()
    };
    try {
      var response = await http.get(url, headers: headers);
      print('Response data: ${utf8.decode(response.bodyBytes)}');
      //서버통신 성공
      if (response.statusCode == 200) {
        Map jsonData = (jsonDecode(utf8.decode(response.bodyBytes)));
        List<dynamic> _priorInfouSearch = jsonData['result']['content'];
        //accessToken이 유효하지 않음.
        List<InfouSearch> _infouSearch =
            _priorInfouSearch.map((e) => InfouSearch.fromJson(e)).toList();
        return _infouSearch;
      } else if (response.statusCode == 403) {
        bool _refresh_token_result = await refreshToken();
        //refresh-token도 유효하지 않습니다. -> 초기 로그인 화면으로 이동해야함.
        if (_refresh_token_result == false) {
          print('refresh-token이 유효하지 않습니다.');
          //똥값 보내고 이거 판단해서 초기 로그인 화면으로 이동하면 됨.
          return [];
        } else {
          print('새로운 token을 발급받았습니다');
        }
      }
    } catch (e) {
      // 네트워크 에러 처리
      print('Exception caught: $e');
    }
  }
}

Future<List<InfouSearch>> getDataInfouPopular(
    String keyword,
    String condition,
    Map<dynamic,dynamic> pageable) async {

  CurrentToken _currentToken = CurrentToken();
  String decodeUrl = ApiUrl.apiUrl
      + '/api/v1/infou/popular?keyword=$keyword&condition=$condition'
      + '&page=' + pageable['page']
      + '&size=' + pageable['size']
      + '&sort=' + pageable['sort'][0];
  String _fetch_url = Uri.encodeFull(decodeUrl);
  var url = Uri.parse(_fetch_url);
  while (true) {
    try {
      var headers = {
        'accept': 'application/json',
        'Authorization': 'Bearer ' + _currentToken.getAccessToken()
      };
      var response = await http.get(url, headers: headers);
      print('Response data: ${utf8.decode(response.bodyBytes)}');
      //서버통신 성공
      if (response.statusCode == 200) {
        Map jsonData = (jsonDecode(utf8.decode(response.bodyBytes)));
        //어떻게 데이터가 생겼나요..?
        List<dynamic> _priorInfouSearch = jsonData['result']['content'];
        //accessToken이 유효하지 않음.
        List<InfouSearch> _infouSearch =
            _priorInfouSearch.map((e) => InfouSearch.fromJson(e)).toList();
        return _infouSearch;
      } else if (response.statusCode == 403) {
        bool _refresh_token_result = await refreshToken();
        //refresh-token도 유효하지 않습니다. -> 초기 로그인 화면으로 이동해야함.
        if (_refresh_token_result == false) {
          print('refresh-token이 유효하지 않습니다.');
          //똥값 보내고 이거 판단해서 초기 로그인 화면으로 이동하면 됨.
          return [];
        } else {
          print('새로운 token을 발급받았습니다');
        }
      }
    } catch (e) {
      // 네트워크 에러 처리
      print('Exception caught: $e');
    }
  }
}

Future<List<InfouSearch>> getDataInfouDetail(
    String keyword,
    String condition,
    Map<dynamic,dynamic> pageable) async {

  CurrentToken _currentToken = CurrentToken();
  String decodeUrl = ApiUrl.apiUrl
      + '/api/v1/infou/detail';
  String _fetch_url = Uri.encodeFull(decodeUrl);
  var url = Uri.parse(_fetch_url);

  while (true) {
    try {
      var headers = {
        'accept': 'application/json',
        'Authorization': 'Bearer ' + _currentToken.getAccessToken()
      };
      var response = await http.get(url, headers: headers);
      print('Response data: ${utf8.decode(response.bodyBytes)}');
      //서버통신 성공
      if (response.statusCode == 200) {
        Map jsonData = (jsonDecode(utf8.decode(response.bodyBytes)));
        List<dynamic> _priorInfouSearch = jsonData['result']['content'];
        //accessToken이 유효하지 않음.
        List<InfouSearch> _infouSearch =
            _priorInfouSearch.map((e) => InfouSearch.fromJson(e)).toList();
        return _infouSearch;
      } else if (response.statusCode == 403) {
        bool _refresh_token_result = await refreshToken();
        //refresh-token도 유효하지 않습니다. -> 초기 로그인 화면으로 이동해야함.
        if (_refresh_token_result == false) {
          print('refresh-token이 유효하지 않습니다.');
          //똥값 보내고 이거 판단해서 초기 로그인 화면으로 이동하면 됨.
          return [];
        } else {
          print('새로운 token을 발급받았습니다');
        }
      }
    } catch (e) {
      // 네트워크 에러 처리
      print('Exception caught: $e');
    }
  }
}

Future<List<InfouSearch>> getDataInfouDetails(
    String academicNumber,
    String professorName,
    Map<dynamic,dynamic> pageable) async {

  CurrentToken _currentToken = CurrentToken();
  String decodeUrl = ApiUrl.apiUrl
      + '/api/v1/infou/search?academicNumber=$academicNumber&professorName=$professorName'
      + '&page=' + pageable['page']
      + '&size=' + pageable['size']
      + '&sort=' + pageable['sort'][0];
  String _fetch_url = Uri.encodeFull(decodeUrl);
  var url = Uri.parse(_fetch_url);
  while (true) {
    try {
      var headers = {
        'accept': 'application/json',
        'Authorization': 'Bearer ' + _currentToken.getAccessToken()
      };
      var response = await http.get(url, headers: headers);
      print('Response data: ${utf8.decode(response.bodyBytes)}');
      //서버통신 성공
      if (response.statusCode == 200) {
        Map jsonData = (jsonDecode(utf8.decode(response.bodyBytes)));
        //데이터가 어떻게 생겼나요?
        List<dynamic> _priorInfouSearch = jsonData['result']['content'];
        //accessToken이 유효하지 않음.
        List<InfouSearch> _infouSearch =
            _priorInfouSearch.map((e) => InfouSearch.fromJson(e)).toList();
        return _infouSearch;
      } else if (response.statusCode == 403) {
        bool _refresh_token_result = await refreshToken();
        //refresh-token도 유효하지 않습니다. -> 초기 로그인 화면으로 이동해야함.
        if (_refresh_token_result == false) {
          print('refresh-token이 유효하지 않습니다.');
          //똥값 보내고 이거 판단해서 초기 로그인 화면으로 이동하면 됨.
          return [];
        } else {
          print('새로운 token을 발급받았습니다');
        }
      }
    } catch (e) {
      // 네트워크 에러 처리
      print('Exception caught: $e');
    }
  }
}

Future<bool> postDataInfou(
    String lectureName,
    String lectureType,
    String department,
    String semester,
    String professorName,
    String academicNumber,
    String grade,
    String skill,
    String level,
    int score,
    String review) async {

  CurrentToken _currentToken = CurrentToken();
  String _post_url = ApiUrl.apiUrl
      + '/api/v1/infou';
  var url = Uri.parse(_post_url);
  String requestBody = jsonEncode({
    "lectureName": lectureName,
    "lectureType": lectureType,
    "department": department,
    "semester": semester,
    "professorName": professorName,
    "academicNumber" : academicNumber,
    "grade" : grade,
    "skill" : skill,
    "level" : level,
    "score" : score,
    "review" : review
  });
  while (true) {
    try {
      var headers = {
        'accept': 'application/json',
        'Authorization': 'Bearer ' + _currentToken.getAccessToken()
      };
      var response = await http.post(url, headers: headers, body: requestBody);
      print('Response data: ${utf8.decode(response.bodyBytes)}');
      //서버통신 성공
      if (response.statusCode == 200) {
        Map jsonData = (jsonDecode(utf8.decode(response.bodyBytes)));
        if (jsonData['isSuccess'] == true) {
          print("강의평 등록 되었습니다.");
        } else {
          print("강의평 등록이 오류로 처리 되지 않았습니다");
        }
      }
      //token 유효하지 않습니다.
      else if (response.statusCode == 403) {
        bool _refresh_token_result = await refreshToken();
        //refresh-token도 유효하지 않습니다. -> 초기 로그인 화면으로 이동해야함.
        if (_refresh_token_result == false) {
          print('refresh-token이 유효하지 않습니다.');
          return false;
        } else {
          print('새로운 token을 발급받았습니다');
        }
      }
    } catch (e) {
      print('error caught $e');
    }
  }
}