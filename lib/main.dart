import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/view/evaluate_screen.dart';
import 'package:myapp/view/evaluate_screen_popular_list.dart';
import 'package:myapp/view/main_screen.dart';
import '../splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:myapp/view/evaluate_screen_detail.dart';
import 'package:myapp/view/evaluate_screen_write.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

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
      home: splash_screen()//evaluate_screen() // EvaluateScreenDetail()//EvaluateScreenWrite(academicNumber: '',lectureName: '',department: '',professorName: '',),
    );
  }
}
