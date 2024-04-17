import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:infou/splash_screen/splash_screen.dart';
import 'package:infou/utils.dart';
import 'package:infou/view/register_screen.dart';

import '../widget/list_view.dart';

class MypageScreenSetting extends StatefulWidget {
  @override
  State<MypageScreenSetting> createState() => _MypageScreenSettingState();
}

class _MypageScreenSettingState extends State<MypageScreenSetting> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "설정",
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
            Expanded(
              child: LineListView(
                itemList: const [
                  ['사용자 정보 변경'],
                  ['공지사항'],
                  ['이용약관'],
                  ['개인정보 정책'],
                  ['오픈소스'],
                  ['문의하기'],
                  ['버전', '0.0.1'],
                ],
                onTap: [
                  () async {
                    // 사용자 정보 변경
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => register_screen_nickname(),
                        ));
                  },
                  () async {
                    // 공지사항
                  },
                  () async {
                    // 이용 약관
                  },
                  () async {
                    // 개인정보 정책
                  },
                  () async {
                    // 오픈소스
                  },
                  () async {
                    // 문의하기
                  },
                  () async {
                    // 버전
                  },
                ],
                itemSpacing: 0.0,
              ),
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
            ),
            Expanded(
              child: LineListView(
                itemList: const [
                  ['로그아웃'],
                  ['회원 탈퇴'],
                ],
                onTap: [
                  () async {
                    // 로그아웃
                  },
                  () async {
                    // 회원 탈퇴
                  },
                ],
                itemSpacing: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
