import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:infou/splash_screen/splash_screen.dart';
import 'package:infou/utils.dart';
import 'package:infou/view/register_screen.dart';

import '../widget/list_view.dart';

class MypageScreenPoint extends StatefulWidget {
  @override
  State<MypageScreenPoint> createState() => _MypageScreenPointState();
}

class _MypageScreenPointState extends State<MypageScreenPoint> {
  final Map<String, Map<String, String>> pointList = {
    '0': {
      'point': '+ 50',
      'totalPoint': '550',
      'category': '강의평 작성',
      'date': '2023.01.30',
    },
    '1': {
      'point': '+ 50',
      'totalPoint': '550',
      'category': '강의평 작성',
      'date': '2023.01.30',
    },
    '2': {
      'point': '+ 50',
      'totalPoint': '550',
      'category': '강의평 작성',
      'date': '2023.01.30',
    },
    '3': {
      'point': '+ 50',
      'totalPoint': '550',
      'category': '강의평 작성',
      'date': '2023.01.30',
    },
  };

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "포인트 기록",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w800,
              height: 0,
              letterSpacing: 0.02,
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('보유 포인트'), Text('550P')],
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: pointList.length,
              itemBuilder: (BuildContext context, int index) {
                final item = pointList[index.toString()];

                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(item!['point'] ?? ''),
                            Text('p '),
                            Text(
                              item!['category'] ?? '',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              (item!['totalPoint'] ?? '') + 'P',
                            ),
                            Text(
                              item!['date'] ?? '',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
