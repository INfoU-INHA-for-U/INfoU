import 'package:flutter/material.dart';
import 'package:myapp/view/register_screen.dart';
import 'dart:async';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../view/main_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => register_screen_nickname(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 300, // 이미지의 폭
                  height: 300, // 이미지의 높이
                  fit: BoxFit.contain, // 이미지의 크기 조절 옵션
                ),
                SizedBox(
                  height: 30,
                ),
                /*
                Row(
                  children: [
                    // GradientText(
                    //   "made by 졸업 예정자들",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //       fontSize: 20,
                    //       fontFamily: 'righteous',
                    //       fontWeight: FontWeight.w800),
                    //   colors: [
                    //     Colors.blueAccent,
                    //     Colors.blueAccent,
                    //   ],
                    // ),
                  ],
                )*/
              ],
            )
          ],
        ),
      ),
    );
  }
}
