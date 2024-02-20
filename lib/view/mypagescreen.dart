import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class mypage_screen extends StatefulWidget {
  @override
  State<mypage_screen> createState() => _mypage_screenState();
}

class _mypage_screenState extends State<mypage_screen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // mypagescreenpgD (2:549)
        padding: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // autogroupsnxmimb (6aNjLj6VaU6HcC6FuWsnxm)
                margin:
                    EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 15 * fem),
                padding:
                    EdgeInsets.fromLTRB(17 * fem, 16 * fem, 17 * fem, 15 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Text(
                  '마이페이지',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 17 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                // autogroupjxvma37 (6aNjSJmXbDK2MrRckyJXvM)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
                padding: EdgeInsets.fromLTRB(
                    22.58 * fem, 14.58 * fem, 230 * fem, 13.58 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // healthiconsuiuserprofilesH7 (2:578)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 7.58 * fem, 0 * fem),
                      width: 35.83 * fem,
                      height: 35.83 * fem,
                      child: Image.asset(
                        'assets/page-1/images/healthicons-ui-user-profile.png',
                        width: 35.83 * fem,
                        height: 35.83 * fem,
                      ),
                    ),
                    Container(
                      // autogroupyrxdaBX (6aNjZ45HaP9KRHzYY3Yrxd)
                      constraints: BoxConstraints(
                        maxWidth: 200.0, // 최대 가로 사이즈를 설정
                      ),
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 1 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // W5B (2:552)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 6 * fem),

                            child: Text(
                              '하성민',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // 1nd (2:551)
                            '내 정보',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff3a4ca8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // group40Z3T (2:566)
                padding: EdgeInsets.fromLTRB(
                    18.1 * fem, 22 * fem, 18.1 * fem, 23 * fem),
                width: 361 * fem,
                decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                ),
                child: menuWidget('포인트', fem, ffem),
              ),
              Container(
                // group40Z3T (2:566)
                padding: EdgeInsets.fromLTRB(
                    18.1 * fem, 22 * fem, 18.1 * fem, 23 * fem),
                width: 361 * fem,
                decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                ),
                child: menuWidget('이용 안내', fem, ffem),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column menuWidget(String str, double fem, double ffem) {
    // str: 메뉴위젯 이름
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // TuX (2:568)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 22 * fem),
          child: Text(
            str,
            style: SafeGoogleFont(
              'Inter',
              fontSize: 14 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.2125 * ffem / fem,
              color: Color(0xff000000),
            ),
          ),
        ),
        Container(
          // group39zPf (2:569)
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // autogroupefkyYRB (6aNmp59JxCt7ihvFgwEfky)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.81 * fem, 0 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    menuWidgetElement('📚 시간표 사진 등록하기', fem, ffem),
                    Container(
                      // chevronrightNv1 (2:574)
                      width: 17.09 * fem,
                      height: 12 * fem,
                      child: Image.asset(
                        'assets/page-1/images/chevron-right-NEh.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23 * fem,
              ),
              Container(
                // autogroup71zwVDw (6aNmuZz9gVVAsxJncr71Zw)
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    menuWidgetElement('📚 시간표 사진 등록하기', fem, ffem),
                    Container(
                      // chevronrightxdK (2:577)
                      width: 17.09 * fem,
                      height: 12 * fem,
                      child: Image.asset(
                        'assets/page-1/images/chevron-right-mSd.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23 * fem,
              ),
              Container(
                // autogrouprz5fVt9 (6aNmzuAbqrrrrNofhfrZ5f)
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    menuWidgetElement('📚 리뷰 남기고 포인트 등록하기', fem, ffem),
                    Container(
                      // chevronrightmKs (2:575)
                      width: 17.09 * fem,
                      height: 12 * fem,
                      child: Image.asset(
                        'assets/page-1/images/chevron-right.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23 * fem,
              ),
              Container(
                // autogroupnvzuhzD (6aNn5u2GsPmpT9XF6KNVzu)
                margin:
                    EdgeInsets.fromLTRB(1.01 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    menuWidgetElement('👛 이용권 구매하기', fem, ffem),
                    Container(
                      // chevronrightx9T (2:576)
                      width: 17.09 * fem,
                      height: 12 * fem,
                      child: Image.asset(
                        'assets/page-1/images/chevron-right-Mph.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container menuWidgetElement(String str, double fem, double ffem) {
    return Container(
      // V5X (2:570)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 150.9 * fem, 0 * fem),
      child: Text(
        str,
        style: SafeGoogleFont(
          'Inter',
          fontSize: 11 * ffem,
          fontWeight: FontWeight.w700,
          height: 1.2125 * ffem / fem,
          color: Color(0xff000000),
        ),
      ),
    );
  }
}
