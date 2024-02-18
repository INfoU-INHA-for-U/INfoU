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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupsnxmimb (6aNjLj6VaU6HcC6FuWsnxm)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 15 * fem),
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
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
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
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
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
                          '내 정보 수정하기',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // TuX (2:568)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                    child: Text(
                      '포인트',
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
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0.81 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // V5X (2:570)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 207.9 * fem, 0 * fem),
                                child: Text(
                                  '📚 시간표 사진 등록하기',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
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
                              Container(
                                // eMj (2:571)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 215.7 * fem, 0 * fem),
                                child: Text(
                                  '💸 내 포인트 조회하기',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
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
                              Container(
                                // em3 (2:572)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 189.7 * fem, 0 * fem),
                                child: Text(
                                  '📚 리뷰 남기고 포인트 받기',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // chevronrightmKs (2:575)
                                width: 17.09 * fem,
                                height: 12 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-right.png',
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
                          // autogroupnvzuhzD (6aNn5u2GsPmpT9XF6KNVzu)
                          margin: EdgeInsets.fromLTRB(
                              1.01 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // 3HP (2:573)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 233.7 * fem, 0 * fem),
                                child: Text(
                                  '👛 이용권 구매하기',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // chevronrightx9T (2:576)
                                width: 17.09 * fem,
                                height: 12 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-right-Mph.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup2mevJDK (6aNjixxSLzMZ2RUsPo2MeV)
              padding: EdgeInsets.fromLTRB(1 * fem, 23 * fem, 0 * fem, 5 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group192f7 (2:553)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 58 * fem),
                    padding: EdgeInsets.fromLTRB(
                        19 * fem, 20.66 * fem, 17 * fem, 50 * fem),
                    width: 360 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f7f7),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // 8CM (2:561)
                          margin: EdgeInsets.fromLTRB(
                              0.06 * fem, 0 * fem, 0 * fem, 32.34 * fem),
                          child: Text(
                            '이용 안내',
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
                          // autogroupqdro3aD (6aNjxHuZkQnmxUj56rQDRo)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 8 * fem, 27.32 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // mWD (2:555)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 258 * fem, 0 * fem),
                                child: Text(
                                  '앱 버전',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // 62h (2:556)
                                '1.0.0',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 11 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroup4yys2ww (6aNk4CuNtzUF5nqjeV4Yys)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 27.32 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // yMP (2:557)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 279 * fem, 0 * fem),
                                child: Text(
                                  '문의하기',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // chevronrightJ8m (2:565)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0.64 * fem),
                                width: 17 * fem,
                                height: 12 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-right-XrV.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupc6ehpso (6aNk9xEoUevM2H4kM2c6Eh)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 27.32 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ARs (2:558)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 279 * fem, 0 * fem),
                                child: Text(
                                  '공지사항',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // chevronrighthAu (2:564)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.72 * fem, 0 * fem, 0 * fem),
                                width: 17 * fem,
                                height: 12 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-right-Jny.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupv2u3RMo (6aNkFNFSvUuib7WTMPv2u3)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 26 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // MmF (2:559)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 240 * fem, 0.04 * fem),
                                child: Text(
                                  '개인정보 처리방침',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // chevronrightH97 (2:563)
                                width: 17 * fem,
                                height: 12 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-right-NCd.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupnni1puj (6aNkLs6HemWmkMtzHJnNi1)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // ZMX (2:560)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1 * fem, 248 * fem, 0 * fem),
                                child: Text(
                                  '청소년 보호방침',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // chevronright5Ks (2:562)
                                width: 17 * fem,
                                height: 12 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-right-WUD.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group49cah (I2:613;1:1845)
                    padding: EdgeInsets.fromLTRB(
                        33 * fem, 6 * fem, 33 * fem, 7 * fem),
                    width: 360 * fem,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffafafaf)),
                      color: Color(0xffffffff),
                    ),
                    child: Container(
                      // group50Xhf (I2:613;1:1826)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // homegaZ (I2:613;1:1827)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 45 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorDaV (I2:613;1:1828)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: 20 * fem,
                                  height: 20 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-KFj.png',
                                    width: 20 * fem,
                                    height: 20 * fem,
                                  ),
                                ),
                                Container(
                                  // x2H (I2:613;1:1829)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 1 * fem, 0 * fem),
                                  child: Text(
                                    '홈',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 11 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xffbbbbbb),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // notices9F (I2:613;1:1833)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 42 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorDD7 (I2:613;1:1835)
                                  margin: EdgeInsets.fromLTRB(
                                      1 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: 20 * fem,
                                  height: 20 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-TYR.png',
                                    width: 20 * fem,
                                    height: 20 * fem,
                                  ),
                                ),
                                Text(
                                  // M4R (I2:613;1:1834)
                                  '공지사항',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xffbbbbbb),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // lectureHim (I2:613;1:1836)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 45.5 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorS5s (I2:613;1:1838)
                                  margin: EdgeInsets.fromLTRB(
                                      1 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: 20 * fem,
                                  height: 20 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8mb.png',
                                    width: 20 * fem,
                                    height: 20 * fem,
                                  ),
                                ),
                                Text(
                                  // xpu (I2:613;1:1837)
                                  '강의평가',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xffbbbbbb),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // pointWbX (I2:613;1:1839)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 49 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // mingcutepigmoneylineps7 (I2:613;1:1841)
                                  margin: EdgeInsets.fromLTRB(
                                      0.5 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: 20 * fem,
                                  height: 20 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mingcute-pig-money-line-9gy.png',
                                    width: 20 * fem,
                                    height: 20 * fem,
                                  ),
                                ),
                                Container(
                                  // jjB (I2:613;1:1840)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0.5 * fem, 0 * fem),
                                  child: Text(
                                    '포인트',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 11 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xffbbbbbb),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // mypageyNd (I2:613;1:1830)
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorvHs (I2:613;1:1832)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: 18 * fem,
                                  height: 18 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8WH.png',
                                    width: 18 * fem,
                                    height: 18 * fem,
                                  ),
                                ),
                                Container(
                                  // FL9 (I2:613;1:1831)
                                  margin: EdgeInsets.fromLTRB(
                                      1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    '마이',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 11 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff37a9ff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
