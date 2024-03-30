import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/view/register_screen.dart';
import '../splash_screen/splash_screen.dart';

import 'package:myapp/view/homescreen.dart';
import 'package:myapp/view/mypagescreen.dart';

void main() => runApp(MyApp());

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
