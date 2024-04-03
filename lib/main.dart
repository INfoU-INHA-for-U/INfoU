import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/view/register_screen.dart';
import '../splash_screen/splash_screen.dart';

import 'package:myapp/view/homescreen.dart';
import 'package:myapp/view/mypagescreen.dart';

void main() => runApp(MyApp());

// 웹 내에서 작동하는 경우 flutter run -d chrome --web-hostname=127.0.0.1 --web-port=8080

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splash_screen(),
    );
  }
}
