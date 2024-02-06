import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // noticescreentz9 (2:119)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group327yeD (2:121)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 59*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // Frd (2:178)
                    padding: EdgeInsets.fromLTRB(26.5*fem, 13.5*fem, 14*fem, 13.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // Yqj (2:179)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.5*fem, 0*fem),
                            child: Text(
                              '강의평가',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.2575*ffem/fem,
                                letterSpacing: 0.0200000003*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // backqCZ (2:180)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                          width: 20*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-1/images/back.png',
                            width: 20*fem,
                            height: 20*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group2219j3 (2:123)
                    margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 14*fem, 23*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame104b7 (2:126)
                          margin: EdgeInsets.fromLTRB(1.99*fem, 0*fem, 0*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(6*fem, 10*fem, 6*fem, 10*fem),
                          width: 330.01*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffc1c1c1)),
                            color: Color(0xffffffff),
                          ),
                          child: Text(
                            '최근 강의평',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15*fem,
                        ),
                        Container(
                          // frame18gsP (2:128)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.99*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 20.01*fem, 10*fem),
                          width: double.infinity,
                          height: 90*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame13B3T (2:129)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 95*fem, 0*fem),
                                width: 178*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupkfkqW5j (6aNShczGVPZVkW8N5sKFkq)
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // 245 (2:131)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                            child: Text(
                                              '자료구조 [김영호]',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group228cu (2:132)
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // vectorgPX (2:133)
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-KuX.png',
                                                    width: 16*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3*fem,
                                                ),
                                                Container(
                                                  // vectorP33 (2:134)
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-oPs.png',
                                                    width: 16*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3*fem,
                                                ),
                                                Container(
                                                  // vectorv2y (2:135)
                                                  width: 17*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-UNq.png',
                                                    width: 17*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3*fem,
                                                ),
                                                Container(
                                                  // vectorFb3 (2:136)
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector.png',
                                                    width: 16*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3*fem,
                                                ),
                                                Container(
                                                  // vectornay (2:137)
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-SJ9.png',
                                                    width: 16*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group219ijX (2:138)
                                      width: double.infinity,
                                      height: 19*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group24TBK (2:139)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                            width: 92*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(5*fem),
                                            ),
                                            child: Container(
                                              // frame12zS9 (2:140)
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xffc5d2ff)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(5*fem),
                                              ),
                                              child: Center(
                                                child: Center(
                                                  child: Text(
                                                    '만족스러워요 👍 ',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group41fYH (2:142)
                                            width: 81*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(5*fem),
                                            ),
                                            child: Container(
                                              // frame12Dph (2:143)
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xffc5d2ff)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(5*fem),
                                              ),
                                              child: Center(
                                                child: Center(
                                                  child: Text(
                                                    '보통이에요 🤨',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame14KMw (2:146)
                                margin: EdgeInsets.fromLTRB(0*fem, 17*fem, 0*fem, 16*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // 4aR (2:148)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                      child: Text(
                                        '추천도',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // aYm (2:150)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                      child: Text(
                                        '4.9',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15*fem,
                        ),
                        Container(
                          // frame19grh (2:151)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.99*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 20.51*fem, 10*fem),
                          width: double.infinity,
                          height: 90*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame13MT3 (2:152)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 95*fem, 0*fem),
                                width: 178*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupylqu5dw (6aNTDgxVw3evwYNeMHyLQu)
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // cNy (2:154)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                            child: Text(
                                              '클라우드 컴퓨팅 [권구인]',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group2286R (2:155)
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // vectorsZo (2:156)
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-nRB.png',
                                                    width: 16*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3*fem,
                                                ),
                                                Container(
                                                  // vectorQZj (2:157)
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-zPf.png',
                                                    width: 16*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3*fem,
                                                ),
                                                Container(
                                                  // vectorwpZ (2:158)
                                                  width: 17*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-KcH.png',
                                                    width: 17*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3*fem,
                                                ),
                                                Container(
                                                  // vectorHNd (2:159)
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-oZf.png',
                                                    width: 16*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3*fem,
                                                ),
                                                Container(
                                                  // vector1pR (2:160)
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-SeR.png',
                                                    width: 16*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group219MtH (2:161)
                                      width: double.infinity,
                                      height: 19*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group24ueu (2:162)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                            width: 92*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(5*fem),
                                            ),
                                            child: Container(
                                              // frame12TAd (2:163)
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xffc5d2ff)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(5*fem),
                                              ),
                                              child: Center(
                                                child: Center(
                                                  child: Text(
                                                    '만족스러워요 👍 ',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group41x7P (2:165)
                                            width: 81*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(5*fem),
                                            ),
                                            child: Container(
                                              // frame12uYR (2:166)
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xffc5d2ff)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(5*fem),
                                              ),
                                              child: Center(
                                                child: Center(
                                                  child: Text(
                                                    '보통이에요 🤨',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame14odo (2:169)
                                margin: EdgeInsets.fromLTRB(0*fem, 17*fem, 0*fem, 16*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // YrH (2:171)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                      child: Text(
                                        '추천도',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // gSh (2:173)
                                      margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 0*fem, 0*fem),
                                      child: Text(
                                        '4.7',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
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
                    // rectangle29PM7 (2:122)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    width: double.infinity,
                    height: 5*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfff7f7f7),
                    ),
                  ),
                  Container(
                    // autogroupydz7jA5 (6aNRSf5quQdVzr4ZPDydZ7)
                    margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 13.99*fem, 0*fem),
                    width: double.infinity,
                    height: 333*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // group258s1P (2:174)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            width: 330.01*fem,
                            height: 297*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame10n8M (2:175)
                                  padding: EdgeInsets.fromLTRB(6*fem, 10*fem, 6*fem, 10*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xffc1c1c1)),
                                    color: Color(0xffffffff),
                                  ),
                                  child: Text(
                                    '인기 강의평',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame46s9o (2:177)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.01*fem, 0*fem),
                                  width: double.infinity,
                                  height: 260*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // frame309QvR (2:181)
                          left: 14*fem,
                          top: 37*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 20*fem),
                            width: 300*fem,
                            height: 296*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff828282)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // group232tah (2:182)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 155*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // vectorDss (2:184)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                        width: 20*fem,
                                        height: 20*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-5vu.png',
                                          width: 20*fem,
                                          height: 20*fem,
                                        ),
                                      ),
                                      Container(
                                        // xKf (2:183)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          '익명의 거북이 [경영학과]',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15*fem,
                                ),
                                Container(
                                  // frame315qPT (2:185)
                                  width: 294*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // group306PQy (2:186)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43*fem, 0*fem),
                                        width: double.infinity,
                                        height: 91*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // autogroupzn9kJXw (6aNRseND35CHzheSLTZN9K)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.53*fem, 0*fem),
                                              width: 46.47*fem,
                                              height: double.infinity,
                                              child: Container(
                                                // group305FCH (2:188)
                                                width: 29*fem,
                                                height: 90*fem,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      // PJV (2:189)
                                                      '과목',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 12*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff828282),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10*fem,
                                                    ),
                                                    Text(
                                                      // i5s (2:190)
                                                      '교수',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 12*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff828282),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10*fem,
                                                    ),
                                                    Text(
                                                      // 3P3 (2:191)
                                                      '수강학기',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 12*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff828282),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10*fem,
                                                    ),
                                                    Text(
                                                      // mpq (2:192)
                                                      '한줄평',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 12*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff828282),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // group304jFs (2:194)
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    // 66R (2:195)
                                                    '컴퓨터 기반 응용 프로그래밍',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10*fem,
                                                  ),
                                                  Text(
                                                    // Qso (2:196)
                                                    '서영덕',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10*fem,
                                                  ),
                                                  Text(
                                                    // 9qP (2:197)
                                                    '2023년도 2학기',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10*fem,
                                                  ),
                                                  Text(
                                                    // tHB (2:198)
                                                    '강의력 “만족스러워요”, 난이도 “어려워요”',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20*fem,
                                      ),
                                      Container(
                                        // group303CHs (2:199)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 89*fem, 0*fem),
                                        width: double.infinity,
                                        height: 22*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // group23L9B (2:200)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // vectorTzV (2:201)
                                                    width: 23*fem,
                                                    height: 22*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/vector-V65.png',
                                                      width: 23*fem,
                                                      height: 22*fem,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 4*fem,
                                                  ),
                                                  Container(
                                                    // vectorCSH (2:202)
                                                    width: 23*fem,
                                                    height: 22*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/vector-vo7.png',
                                                      width: 23*fem,
                                                      height: 22*fem,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 4*fem,
                                                  ),
                                                  Container(
                                                    // vectorjBK (2:203)
                                                    width: 24*fem,
                                                    height: 22*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/vector-pdj.png',
                                                      width: 24*fem,
                                                      height: 22*fem,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 4*fem,
                                                  ),
                                                  Container(
                                                    // vectorGBF (2:204)
                                                    width: 23*fem,
                                                    height: 22*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/vector-MGh.png',
                                                      width: 23*fem,
                                                      height: 22*fem,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 4*fem,
                                                  ),
                                                  Container(
                                                    // vectorbUR (2:205)
                                                    width: 23*fem,
                                                    height: 22*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/vector-sn5.png',
                                                      width: 23*fem,
                                                      height: 22*fem,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Center(
                                              // YeZ (2:206)
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                text: TextSpan(
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: Color(0xff808080),
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: '4.0',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w700,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff000000),
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' ',
                                                    ),
                                                    TextSpan(
                                                      text: '/ 5.0',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 9*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2125*ffem/fem,
                                                        color: Color(0xff808080),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20*fem,
                                      ),
                                      Container(
                                        // 3dF (2:207)
                                        constraints: BoxConstraints (
                                          maxWidth: 294*fem,
                                        ),
                                        child: Text(
                                          '지금까지 들었던 수업중에 가장 만족도가 높았던 것 같습니다. 언제 기회가 된다면 진짜 교수님한테 밥사드리고 싶어요.',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15*fem,
                                ),
                                Container(
                                  // group231u9f (2:208)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 97.32*fem, 0*fem),
                                  width: double.infinity,
                                  height: 23*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame43Dw3 (2:209)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.68*fem, 0*fem),
                                        padding: EdgeInsets.fromLTRB(4*fem, 4*fem, 4*fem, 4*fem),
                                        width: 92*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff000000)),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(10*fem),
                                        ),
                                        child: Container(
                                          // frame4282R (2:210)
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // Ury (2:211)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff808080),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: '공감해요',
                                                        style: SafeGoogleFont (
                                                          'Inter',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.2125*ffem/fem,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' 👍',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // eey (2:212)
                                                '16',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2125*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame44o25 (2:213)
                                        padding: EdgeInsets.fromLTRB(4*fem, 4*fem, 4*fem, 4*fem),
                                        width: 103*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff000000)),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(10*fem),
                                        ),
                                        child: Container(
                                          // frame42KFK (2:214)
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // fpy (2:215)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 0*fem),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.2125*ffem/fem,
                                                      color: Color(0xff808080),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: '공감못해요',
                                                        style: SafeGoogleFont (
                                                          'Inter',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.2125*ffem/fem,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' 👍',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // sg9 (2:216)
                                                '16',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2125*ffem/fem,
                                                  color: Color(0xff000000),
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
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame326pLV (2:217)
                    width: double.infinity,
                    height: 20*fem,
                  ),
                ],
              ),
            ),
            Container(
              // group49BB3 (I2:222;1:1845)
              padding: EdgeInsets.fromLTRB(33*fem, 6*fem, 33*fem, 7*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffafafaf)),
                color: Color(0xffffffff),
              ),
              child: Container(
                // group50JWZ (I2:222;1:1826)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // homeScm (I2:222;1:1827)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorPH7 (I2:222;1:1828)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-TfT.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                          Container(
                            // KAm (I2:222;1:1829)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                            child: Text(
                              '홈',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 11*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: Color(0xffbbbbbb),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // noticeSWH (I2:222;1:1833)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectoryWD (I2:222;1:1835)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-XUZ.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                          Text(
                            // 7MX (I2:222;1:1834)
                            '공지사항',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff37a9ff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // lectureesF (I2:222;1:1836)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.5*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorzRK (I2:222;1:1838)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-bcR.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                          Text(
                            // XRF (I2:222;1:1837)
                            '강의평가',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffbbbbbb),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // pointryK (I2:222;1:1839)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // mingcutepigmoneylineo7s (I2:222;1:1841)
                            margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0*fem, 3*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/mingcute-pig-money-line.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                          Container(
                            // 7PT (I2:222;1:1840)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.5*fem, 0*fem),
                            child: Text(
                              '포인트',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 11*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: Color(0xffbbbbbb),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // mypageEDB (I2:222;1:1830)
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorbJd (I2:222;1:1832)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 18*fem,
                            height: 18*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-1EM.png',
                              width: 18*fem,
                              height: 18*fem,
                            ),
                          ),
                          Container(
                            // KVX (I2:222;1:1831)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              '마이',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 11*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: Color(0xffbbbbbb),
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
          );
  }
}