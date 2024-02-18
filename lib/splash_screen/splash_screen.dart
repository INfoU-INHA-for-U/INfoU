import 'package:flutter/material.dart';
import 'dart:async';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../main_screen.dart';

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
        pageBuilder: (context, animation, secondaryAnimation) => main_screen(),
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
                GradientText("InfoU"
                  ,textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'righteous',
                      fontWeight: FontWeight.w800
                  ),
                  colors: [
                    Colors.blueAccent,
                    Colors.blueAccent,
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [GradientText("made by 졸업 예정자들"
                    ,textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'righteous',
                        fontWeight: FontWeight.w800
                    ),
                    colors: [
                      Colors.blueAccent,
                      Colors.blueAccent,
                    ],
                  ),],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

