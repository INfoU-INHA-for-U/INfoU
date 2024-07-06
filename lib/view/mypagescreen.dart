import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:infou/utils.dart';
import 'package:infou/view/mypagescreen_point.dart';
import 'package:infou/view/mypagescreen_setting.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        scrolledUnderElevation: 0,
        title: const Text(
          '마이페이지',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        titleSpacing: -7,
        actions: [
          IconButton(
            icon: Icon(Icons.settings), // 톱니바퀴 모양의 아이콘
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MypageScreenSetting()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1번, 이름과 이메일
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '[전민혜] 님',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 2,
                    ),
                  ),
                  Text(
                    'push@inha.edu',
                    style: TextStyle(
                      color: Color(0xFFBBBBBB),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),

            // 2번, 강의평가
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '강의평가',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyPageCard(
                        title: '보유 포인트',
                        count: '300P',
                        image: Image.asset('assets/images/pig.png',
                            fit: BoxFit.contain, width: 35, height: 50),
                      ),
                      MyPageCard(
                          title: '작성 리뷰',
                          count: '2',
                          image: Image.asset('assets/images/review.png',
                              fit: BoxFit.contain, width: 30, height: 48))
                    ],
                  ),
                ],
              ),
            ),

            // 3번, 공지사항
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '공지사항',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 3,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: MyPageCard(
                            title: '즐겨찾는 학과',
                            count: '2',
                            image: Image.asset('assets/images/major.png',
                                fit: BoxFit.contain, width: 35, height: 50))),
                    Expanded(child: Container(child: SizedBox())),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyPageCard extends StatelessWidget {
  final String title;
  final String count;
  final Widget image;

  const MyPageCard(
      {Key? key, required this.title, required this.count, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MypageScreenPoint(),
              ));
        },
        child: Container(
          width: 154 * 1.4,
          height: 111 * 1.4,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
          decoration: ShapeDecoration(
            color: Color(0xFFF1F8FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              image,
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  count,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
