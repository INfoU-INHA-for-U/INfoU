import 'package:flutter/material.dart';
import '../splash_screen/splash_screen.dart';

<<<<<<< HEAD
//--
//import 'package:myapp/view/noticescreen.dart';
//import 'package:myapp/view/homescreen.dart';
//import 'package:myapp/view/ratingscreen.dart';
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
      home: Scaffold(
        body: SingleChildScrollView(
          child: mypageScreen(),
        ),
      ),
    );
  }
=======
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash_screen(),
  ));
>>>>>>> oha
}
