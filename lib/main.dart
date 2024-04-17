import 'package:flutter/material.dart';
import 'package:infou/utils.dart';
import 'package:infou/view/main_screen.dart';
//import 'package:infou/view/evaluate_screen.dart';
//import 'package:infou/view/evaluate_screen_popular_list.dart';
//import 'package:infou/view/main_screen.dart';
import '../splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // DefaultFirebaseOptions

//import 'firebase_options.dart';
//import 'package:infou/view/evaluate_screen_detail.dart';
//import 'package:infou/view/evaluate_screen_write.dart';

// 웹 내에서 작동하는 경우 flutter run -d chrome --web-hostname=127.0.0.1 --web-port=8080

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(infou());
}

class infou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: splash_screen() //main_screen(
        // 여기다가 jwt 넣고 시작하면 됩니다.
        //jwt:
        // 'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJpYXQiOjE3MTMzNTAyMzMsImV4cCI6MTcxMzM1MzgzM30.gVs0VnQMSQS-Q5pXmYjYRCMFco85Eo_5CqeVKkgMsB0') //evaluate_screen() // EvaluateScreenDetail()//EvaluateScreenWrite(academicNumber: '',lectureName: '',department: '',professorName: '',),
        );
  }
}
