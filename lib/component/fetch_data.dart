import 'dart:convert';

import 'package:http/http.dart' as http;

import '../class/current_token.dart';
import '../class/lecture.dart';
import '../class/api_url.dart';

String _fetch_url = ApiUrl.apiUrl + 'api/portals/total';

Future<List<Lecture>?> fetchData(String department, String lecture_name) async {

  CurrentToken _currentToken = CurrentToken();
  var url = Uri.parse(_fetch_url);
  var queryParams = {
    'department' : department,
    'lecture_name' : lecture_name,
  };
  var uri = Uri.http(
      url.authority, url.path, queryParams);
  var headers = {
    'accept':'application/json',
    'AuAuthorization' : 'Bearer ' + _currentToken.getAccessToken()
  };
  //아직 api가 뭐가 안되어 있는게 있는거 같아서 확실하게 작성을 못하겠습니다.
  try {
    var response = await http.get(
        uri,headers: headers);
    print('Response data: ${utf8.decode(response.bodyBytes)}');
    if (response.statusCode == 200) {
      Map jsonData = (jsonDecode(utf8.decode(response.bodyBytes)));
      List<dynamic> content_data = jsonData['result']['content'];
      print(content_data[0]);
      List<Lecture> _lectures = content_data.map((json) { return Lecture.fromJson(json);}).toList();
      return _lectures;
      /*
      double sum = 0;
      int count = 0;
      for (var lecture_ in _lectures) {
        // option_1 값이 있는지 확인하고, 있으면 합계에 추가
        if (lecture_.options.containsKey('option_5')) {
          sum += double.parse(lecture_.options['option_5']!);
          count++;
        }
      }
      double average = count > 0 ? sum / count : 0;
      setState(() {
        lecture=_lectures;
        recommand_score=average;
      });*/

    } else {
      // 서버 에러 처리
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // 네트워크 에러 처리
    print('Exception caught: $e');
  }
}