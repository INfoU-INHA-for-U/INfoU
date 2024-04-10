import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;

const html_article_view_url = 'https://fccollege.inha.ac.kr/bbs/fccollege/2039/105069/artclView.do';
class notice_screen_page extends StatefulWidget {

  const notice_screen_page({super.key});

  @override
  State<notice_screen_page> createState() => _notice_screen_pageState();
}

class _notice_screen_pageState extends State<notice_screen_page> {

  String _divContent='';
  String _apiDivContent='';

  String? url;

  @override
  void initState() {
    super.initState();
    //여기서 api로부터 div불러와야함.
    //_apiDivContent = api함수
    _fetchHtmlContent().then((value) => _divContent = '<div class="artclView">' + _divContent + '</div>');
  }

  //홈페이지 자체에서 불러오는 과정
  Future<void> _fetchHtmlContent() async {
    try {
      final response = await http.get(Uri.parse(url!));
      if (response.statusCode == 200) {
        final document = htmlParser.parse(response.body);
        final elements = document.querySelectorAll('.artclView');
        if (elements.isNotEmpty) {
          setState(() {
            _divContent = elements.first.innerHtml;
          });
          print(_divContent.length.toString());
          print(_divContent.trim());
        }
      } else {
        throw Exception('Failed to load HTML content');
      }
    } catch (e) {
      print('Error fetching HTML content: $e');
    }
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              Navigator.pop(context);
            },
          )
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('공지사항 제목', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Container(
                  width: 70,
                  height: 26,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.fromLTRB(10, 2, 0, 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: Text('대학원'),
                ),
                _divContent.trim() == _apiDivContent.trim() ?
                Container(
                  height: 638,
                  child: HtmlWidget(
                    _divContent,
                  )
                ) :
                Container(
                    height: 638,
                  child: Center(
                    child: Text('Fail to load html content.', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                  )
                )
              ],
            )
        ),
      ),
    );
  }
}
