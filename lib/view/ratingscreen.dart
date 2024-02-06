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
        // ratingscreenKhF (2:420)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouposbxQih (6aNfP6C8DKwEoxxFiPoSBX)
              width: double.infinity,
              height: 345*fem,
              child: Stack(
                children: [
                  Positioned(
                    // autogroupmntmjky (6aNcrfQ7LcP9kB9gmqmntM)
                    left: 18*fem,
                    top: 95*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(14*fem, 15*fem, 23*fem, 13*fem),
                      width: 323*fem,
                      height: 97*fem,
                      decoration: BoxDecoration (
                        color: Color(0xfff4f4f4),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // cZs (2:431)
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
                            // autogroupy4qs5yF (6aNd4QZYMK8QQPSBwZY4qs)
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // autogroupxcx5cCV (6aNdA54meWxpkTiNiZXCx5)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                  width: 93*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group22J5K (2:424)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // vectorDCH (2:425)
                                              width: 16*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-koX.png',
                                                width: 16*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3*fem,
                                            ),
                                            Container(
                                              // vectorJUd (2:426)
                                              width: 16*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-c2q.png',
                                                width: 16*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3*fem,
                                            ),
                                            Container(
                                              // vectordWu (2:427)
                                              width: 17*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-1Gh.png',
                                                width: 17*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3*fem,
                                            ),
                                            Container(
                                              // vectory4y (2:428)
                                              width: 16*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-6AR.png',
                                                width: 16*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3*fem,
                                            ),
                                            Container(
                                              // vectorWKo (2:429)
                                              width: 16*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-D6D.png',
                                                width: 16*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group24reZ (2:439)
                                        padding: EdgeInsets.fromLTRB(5.54*fem, 2*fem, 5.54*fem, 1*fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xffc5d2ff)),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(5*fem),
                                        ),
                                        child: Text(
                                          '만족스러워요 👍 ',
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
                                Container(
                                  // group25igm (2:442)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 74*fem, 0*fem),
                                  width: 77*fem,
                                  height: 18*fem,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff868686)),
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(5*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '적당해요 😄',
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
                                Container(
                                  // group37ysb (2:432)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // X8R (2:434)
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
                                        // T25 (2:436)
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
                  ),
                  Positioned(
                    // autogroupy2eyn4M (6aNcV1MXZJRfUqNrkNY2Ey)
                    left: 19*fem,
                    top: 61*fem,
                    child: Container(
                      width: 323*fem,
                      height: 17*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            // hSD (2:422)
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
                            // autogroupmvpt3FB (6aNchRAWqg6NtMDyJSmVPT)
                            padding: EdgeInsets.fromLTRB(211*fem, 1*fem, 0*fem, 1*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // mws (2:438)
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
                                  // chevronright5xZ (2:466)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 17*fem,
                                  height: 12*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/chevron-right-rRT.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group17915X (2:445)
                    left: 16*fem,
                    top: 214*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(14*fem, 15*fem, 17*fem, 13*fem),
                      width: 323*fem,
                      height: 97*fem,
                      decoration: BoxDecoration (
                        color: Color(0xfff4f4f4),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // 5r5 (2:465)
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
                            // autogroupxrxzcr1 (6aNg356qcaUXNE12gWXRxZ)
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // autogroupgyuhAcd (6aNg8QHHmwrDLeVumLGyUH)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                  width: 93*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group266FP (2:458)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // vectordFK (2:459)
                                              width: 16*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-hch.png',
                                                width: 16*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3*fem,
                                            ),
                                            Container(
                                              // vectorMBK (2:460)
                                              width: 16*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-Pbb.png',
                                                width: 16*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3*fem,
                                            ),
                                            Container(
                                              // vectorfxh (2:461)
                                              width: 17*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-K6d.png',
                                                width: 17*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3*fem,
                                            ),
                                            Container(
                                              // vectorbrM (2:462)
                                              width: 16*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-HuP.png',
                                                width: 16*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3*fem,
                                            ),
                                            Container(
                                              // vectorYFo (2:463)
                                              width: 16*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-JSh.png',
                                                width: 16*fem,
                                                height: 16*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group39gso (2:452)
                                        padding: EdgeInsets.fromLTRB(5.54*fem, 2*fem, 5.54*fem, 1*fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xffc5d2ff)),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(5*fem),
                                        ),
                                        child: Text(
                                          '만족스러워요 👍 ',
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
                                Container(
                                  // group40muF (2:455)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 79*fem, 0*fem),
                                  width: 77*fem,
                                  height: 18*fem,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff868686)),
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(5*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '적당해요 😄',
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
                                Container(
                                  // group38eTF (2:447)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // zX7 (2:449)
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
                                        // ii1 (2:451)
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
                  ),
                  Positioned(
                    // phbelllightStu (2:496)
                    left: 321.0555419922*fem,
                    top: 23.3359375*fem,
                    child: Align(
                      child: SizedBox(
                        width: 16.89*fem,
                        height: 18.32*fem,
                        child: Image.asset(
                          'assets/page-1/images/ph-bell-light.png',
                          width: 16.89*fem,
                          height: 18.32*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorLDb (2:498)
                    left: 284*fem,
                    top: 23*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-Kyo.png',
                          width: 20*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // rectangle29SnR (2:423)
              width: double.infinity,
              height: 5*fem,
              decoration: BoxDecoration (
                color: Color(0xfff7f7f7),
              ),
            ),
            Container(
              // autogroupz7mxzZ3 (6aNgt3hEUQDvEypsWSz7MX)
              width: double.infinity,
              height: 314*fem,
              child: Stack(
                children: [
                  Positioned(
                    // autogrouprbhxLcu (6aNdqibNiwomAyfg9ZRBhX)
                    left: 19*fem,
                    top: 19*fem,
                    child: Container(
                      width: 327*fem,
                      height: 17*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // fQH (2:471)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 215*fem, 0*fem),
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
                            // group32nUu (2:467)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 1*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // 82y (2:469)
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
                                  // chevronrightSZT (2:470)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 17*fem,
                                  height: 12*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/chevron-right-fn5.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroup2e5kmrd (6aNe5NsHGChiUghBYo2e5K)
                    left: 18*fem,
                    top: 49*fem,
                    child: Container(
                      width: 155*fem,
                      height: 30*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // healthiconsuiuserprofilei1B (2:474)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/page-1/images/healthicons-ui-user-profile-uk1.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Container(
                            // EER (2:473)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.17*fem),
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
                  ),
                  Positioned(
                    // autogroup3g21Yku (6aNeM35rcUN42JQX763g21)
                    left: 21*fem,
                    top: 86*fem,
                    child: Container(
                      width: 113*fem,
                      height: 15*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // 5F3 (2:477)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                            child: Text(
                              '과목명',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // CKf (2:478)
                            '파이썬 프로그래밍',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupha7pioo (6aNeWceEFF7ZFn7YGfHa7P)
                    left: 21*fem,
                    top: 106*fem,
                    child: Container(
                      width: 102*fem,
                      height: 15*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // FYq (2:479)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                            child: Text(
                              '교수명',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // aLD (2:482)
                            '홍길동, 홍길동',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupcgariBX (6aNefcPEtoZHLNCmyRcgAR)
                    left: 21*fem,
                    top: 126*fem,
                    child: Container(
                      width: 221*fem,
                      height: 15*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // 3Do (2:480)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                            child: Text(
                              '한줄평',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // MEV (2:483)
                            '강의력 “만족스러워요”, 난이도 “어려워요”',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // functionannotation05AV (2:481)
                    left: 22*fem,
                    top: 193*fem,
                    child: Align(
                      child: SizedBox(
                        width: 294*fem,
                        height: 59*fem,
                        child: Text(
                          '지금까지 들었던 수업중에 가장 만족도가 높았던 것 같습니다. 언\n제 기회가 된다면 진짜 교수님한테 밥사드리고 싶어요. 쉽다고 다\n들 대충 가르치던데 Function Annotation 까지 가르쳐주시는 \n거 보고 진짜 깜짝 놀랐어요 :0',
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
                  Positioned(
                    // autogroupibcyFDP (6aNepGoUQXYH3JWhz1iBcy)
                    left: 20*fem,
                    top: 268*fem,
                    child: Container(
                      width: 202*fem,
                      height: 23*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouprskhnDK (6aNezSBD2WbZRfqWcPrskh)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(6*fem, 4*fem, 6*fem, 3.58*fem),
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // sVf (2:485)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.42*fem, 20*fem, 0*fem),
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
                                          text: '도움됐어요',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' 😆',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // LGm (2:486)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.42*fem),
                                  child: Text(
                                    '16',
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
                          Container(
                            // autogroupcrgr4Tf (6aNf5mMfBsyFQ6LPhDcRGR)
                            padding: EdgeInsets.fromLTRB(6*fem, 4*fem, 6*fem, 3.58*fem),
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // Nz9 (2:488)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.42*fem, 23*fem, 0*fem),
                                  child: Text(
                                    '별로에요 🤥',
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
                                  // hmX (2:489)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.42*fem),
                                  child: Text(
                                    '3',
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group23RhX (2:490)
                    left: 27*fem,
                    top: 156*fem,
                    child: Container(
                      width: 132*fem,
                      height: 22*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorMbB (2:491)
                            width: 23*fem,
                            height: 22*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-rVb.png',
                              width: 23*fem,
                              height: 22*fem,
                            ),
                          ),
                          SizedBox(
                            width: 4*fem,
                          ),
                          Container(
                            // vectorHDw (2:492)
                            width: 23*fem,
                            height: 22*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Wmb.png',
                              width: 23*fem,
                              height: 22*fem,
                            ),
                          ),
                          SizedBox(
                            width: 4*fem,
                          ),
                          Container(
                            // vectorze9 (2:493)
                            width: 24*fem,
                            height: 22*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-DF3.png',
                              width: 24*fem,
                              height: 22*fem,
                            ),
                          ),
                          SizedBox(
                            width: 4*fem,
                          ),
                          Container(
                            // vector8VT (2:494)
                            width: 23*fem,
                            height: 22*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-hjs.png',
                              width: 23*fem,
                              height: 22*fem,
                            ),
                          ),
                          SizedBox(
                            width: 4*fem,
                          ),
                          Container(
                            // vectorsT3 (2:495)
                            width: 23*fem,
                            height: 22*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-vjP.png',
                              width: 23*fem,
                              height: 22*fem,
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
              // rectangle31RUZ (2:472)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 72*fem),
              width: double.infinity,
              height: 9*fem,
              decoration: BoxDecoration (
                color: Color(0xfff7f7f7),
              ),
            ),
            Container(
              // group49xjP (I2:527;1:1845)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(33*fem, 6*fem, 33*fem, 7*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffafafaf)),
                color: Color(0xffffffff),
              ),
              child: Container(
                // group50Gk5 (I2:527;1:1826)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // homepmb (I2:527;1:1827)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorxN1 (I2:527;1:1828)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-sqX.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                          Container(
                            // szm (I2:527;1:1829)
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
                      // noticeQUu (I2:527;1:1833)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vector9hP (I2:527;1:1835)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-tkD.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                          Text(
                            // 5L9 (I2:527;1:1834)
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
                      // lecture1jb (I2:527;1:1836)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.5*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vector9L1 (I2:527;1:1838)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-b81.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                          Text(
                            // UNH (I2:527;1:1837)
                            '강의평가',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff37a9ff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // pointDKs (I2:527;1:1839)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // mingcutepigmoneylineMS5 (I2:527;1:1841)
                            margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0*fem, 3*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/mingcute-pig-money-line-xGM.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                          Container(
                            // fhf (I2:527;1:1840)
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
                      // mypageBg1 (I2:527;1:1830)
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorYFf (I2:527;1:1832)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 18*fem,
                            height: 18*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-j5F.png',
                              width: 18*fem,
                              height: 18*fem,
                            ),
                          ),
                          Container(
                            // GhT (I2:527;1:1831)
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