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
        // homescreen5eD (2:290)
        padding: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupfq49m1F (6aNV1ioVNC4Z1C2ePtfq49)
              width: double.infinity,
              height: 244*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle27h9o (2:291)
                    left: 1*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 360*fem,
                        height: 66*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0x4cffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image6ajP (2:364)
                    left: 16*fem,
                    top: 18*fem,
                    child: Align(
                      child: SizedBox(
                        width: 48*fem,
                        height: 15*fem,
                        child: Image.asset(
                          'assets/page-1/images/image-6.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle32gnR (2:365)
                    left: 0*fem,
                    top: 64*fem,
                    child: Align(
                      child: SizedBox(
                        width: 362*fem,
                        height: 180*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xfff4f4f4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // QCd (2:367)
                    left: 320.0807790756*fem,
                    top: 222.5322651863*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 22*fem,
                          height: 15*fem,
                          child: Text(
                            '1 | 1',
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
                  Positioned(
                    // imageremovebgpreview16153s (2:370)
                    left: 109*fem,
                    top: 112*fem,
                    child: Align(
                      child: SizedBox(
                        width: 143*fem,
                        height: 89*fem,
                        child: Image.asset(
                          'assets/page-1/images/image-removebg-preview16-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupv8cuaFX (6aNYRd7jcVpWk81qrhv8Cu)
              padding: EdgeInsets.fromLTRB(5*fem, 17*fem, 0*fem, 15*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupc5z5Ubo (6aNVF8ap457TXfDg2Vc5z5)
                    margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 18*fem, 9*fem),
                    width: double.infinity,
                    height: 17*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          // Pyf (2:337)
                          '오늘의 공지사항',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        Container(
                          // autogroupsar3vCu (6aNVRTcwEyQ76rS8VxsaR3)
                          padding: EdgeInsets.fromLTRB(194*fem, 1*fem, 0*fem, 1*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // FFB (2:339)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                child: Text(
                                  '더 보기',
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
                                // chevronrightZFs (2:340)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: 17*fem,
                                height: 12*fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-right-drM.png',
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
                    // group132fph (2:343)
                    margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 24*fem, 10*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // Pkh (2:344)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          child: Text(
                            '[학부-교외장학] 2024학년도 1학기 유당장학재단 장학금 신...',
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
                          // group127H5P (2:345)
                          margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                          width: 47*fem,
                          height: 15*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff72acf1),
                            borderRadius: BorderRadius.circular(20*fem),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                '# 장학',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group131ve9 (2:348)
                    margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 24*fem, 10*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // ictqm7 (2:355)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          child: Text(
                            '2024년 상반기 ICT학점연계프로젝트인턴십 국내과정 참여 ...',
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
                          // autogroupftrxv1s (6aNZWWUcrxJuhphfrWfTRX)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 202*fem, 0*fem),
                          width: double.infinity,
                          height: 15*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group127eCm (2:349)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                width: 47*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xfff0bb00),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      '# 모집',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // group128hB3 (2:352)
                                width: 54*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffff9191),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      '# 인턴십',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xffffffff),
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
                    // group130NY5 (2:356)
                    margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 24*fem, 18*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // Huw (2:363)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          child: Text(
                            '2024-1학기 대학원 교과목 학사과정 전공학점 신청 안내',
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
                          // autogroup1isfoNV (6aNZj5wziFCzJASSFg1isF)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 202*fem, 0*fem),
                          width: double.infinity,
                          height: 15*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group1278Qm (2:357)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                width: 54*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff385980),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      '# 대학원',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // group128ywB (2:360)
                                width: 47*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff7e7e7e),
                                  borderRadius: BorderRadius.circular(20*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      '# 신청',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xffffffff),
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
                    // rectangle29fZ7 (2:336)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                    width: 360*fem,
                    height: 5*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfff7f7f7),
                    ),
                  ),
                  Container(
                    // autogroupfs9fdPT (6aNVbxKSznv7rsYEpXFs9F)
                    margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 18*fem, 16*fem),
                    width: double.infinity,
                    height: 17*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          // YFX (2:292)
                          '최근 강의평',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        Container(
                          // autogroupwn615FT (6aNVmT3dM73wVwJS4YwN61)
                          padding: EdgeInsets.fromLTRB(211*fem, 1*fem, 0*fem, 1*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bzV (2:334)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                child: Text(
                                  '더 보기',
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
                                // chevronrightvms (2:335)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: 17*fem,
                                height: 12*fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevron-right-q97.png',
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
                    // autogroupzgmbFp9 (6aNVuSpJbA7UTa3kgnZgMb)
                    margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 19*fem, 10*fem),
                    padding: EdgeInsets.fromLTRB(14*fem, 16*fem, 23*fem, 12*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff4f4f4),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 98q (2:301)
                          '파이썬 프로그래밍 [서영덕]',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        Container(
                          // autogroupjxpuGz9 (6aNW6MfnmGhuBeszd4jxpu)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // autogroupcjdsDeV (6aNWBrWdVZJxLuGXYycJds)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                width: 93*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group229o3 (2:294)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // vectortVj (2:295)
                                            width: 16*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-B3j.png',
                                              width: 16*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3*fem,
                                          ),
                                          Container(
                                            // vectorBzd (2:296)
                                            width: 16*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-uwK.png',
                                              width: 16*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3*fem,
                                          ),
                                          Container(
                                            // vectorS9s (2:297)
                                            width: 17*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-ys3.png',
                                              width: 17*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3*fem,
                                          ),
                                          Container(
                                            // vectorZVP (2:298)
                                            width: 16*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-K7T.png',
                                              width: 16*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3*fem,
                                          ),
                                          Container(
                                            // vectortXf (2:299)
                                            width: 16*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-Zjb.png',
                                              width: 16*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group248B7 (2:307)
                                      width: double.infinity,
                                      height: 18*fem,
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
                                  ],
                                ),
                              ),
                              Container(
                                // group25bqP (2:310)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 84*fem, 0*fem),
                                width: 77*fem,
                                height: 18*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xff868686)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      '적당해요 😄',
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
                              Container(
                                // group37Tsb (2:302)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // Qnq (2:304)
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
                                      // wnm (2:306)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
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
                    // autogroupug6qgEZ (6aNWuap6fTXxbjrV4aUG6q)
                    margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 19*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(14*fem, 15*fem, 17*fem, 13*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff4f4f4),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // BSD (2:332)
                          '클라우드 컴퓨팅 [권구인]',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        Container(
                          // autogroupbmtyih3 (6aNX4zi5jK46ePfrP4bMty)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // autogroupujzk3jK (6aNXAQijB93UDE7ZPRuJZK)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                width: 93*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group26aUM (2:325)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // vectorJv9 (2:326)
                                            width: 16*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-4W1.png',
                                              width: 16*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3*fem,
                                          ),
                                          Container(
                                            // vectordxR (2:327)
                                            width: 16*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-zn9.png',
                                              width: 16*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3*fem,
                                          ),
                                          Container(
                                            // vectorASZ (2:328)
                                            width: 17*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-KCH.png',
                                              width: 17*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3*fem,
                                          ),
                                          Container(
                                            // vectorgfo (2:329)
                                            width: 16*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-mgh.png',
                                              width: 16*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3*fem,
                                          ),
                                          Container(
                                            // vectorpX7 (2:330)
                                            width: 16*fem,
                                            height: 16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-CQM.png',
                                              width: 16*fem,
                                              height: 16*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group39y97 (2:319)
                                      width: double.infinity,
                                      height: 18*fem,
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
                                  ],
                                ),
                              ),
                              Container(
                                // group403uf (2:322)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 89*fem, 0*fem),
                                width: 77*fem,
                                height: 18*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xff868686)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      '적당해요 😄',
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
                              Container(
                                // group38hzD (2:314)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // FF3 (2:316)
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
                                      // B8h (2:318)
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupwezhuaV (6aNXuoe62Da8LKc3MuwEzh)
              padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 4*fem),
              width: 361*fem,
              height: 59*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group49RYq (I2:398;1:1845)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                padding: EdgeInsets.fromLTRB(33*fem, 6*fem, 33*fem, 7*fem),
                width: 360*fem,
                height: double.infinity,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xffafafaf)),
                  color: Color(0xffffffff),
                ),
                child: Container(
                  // group50Y7f (I2:398;1:1826)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // homeHb3 (I2:398;1:1827)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45*fem, 0*fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vectord97 (I2:398;1:1828)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                              width: 20*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-S8m.png',
                                width: 20*fem,
                                height: 20*fem,
                              ),
                            ),
                            Container(
                              // xBP (I2:398;1:1829)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                              child: Text(
                                '홈',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 11*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff37a9ff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // notice5Wu (I2:398;1:1833)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vectorDt1 (I2:398;1:1835)
                              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                              width: 20*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-3Lq.png',
                                width: 20*fem,
                                height: 20*fem,
                              ),
                            ),
                            Text(
                              // ZBB (I2:398;1:1834)
                              '공지사항',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 11*ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.2125*ffem/fem,
                                color: Color(0xffbbbbbb),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // lectureJPf (I2:398;1:1836)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.5*fem, 0*fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vectorquP (I2:398;1:1838)
                              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                              width: 20*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-vKf.png',
                                width: 20*fem,
                                height: 20*fem,
                              ),
                            ),
                            Text(
                              // 4n9 (I2:398;1:1837)
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
                        // pointQb7 (I2:398;1:1839)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // mingcutepigmoneylinejtH (I2:398;1:1841)
                              margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0*fem, 3*fem),
                              width: 20*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/page-1/images/mingcute-pig-money-line-Say.png',
                                width: 20*fem,
                                height: 20*fem,
                              ),
                            ),
                            Container(
                              // eEZ (I2:398;1:1840)
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
                        // mypageNAZ (I2:398;1:1830)
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vectorvhs (I2:398;1:1832)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                              width: 18*fem,
                              height: 18*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-gD3.png',
                                width: 18*fem,
                                height: 18*fem,
                              ),
                            ),
                            Container(
                              // rrR (I2:398;1:1831)
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
            ),
          ],
        ),
      ),
          );
  }
}