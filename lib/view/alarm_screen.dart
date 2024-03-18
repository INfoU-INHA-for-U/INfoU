import 'package:flutter/material.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("알람 화면"),
      ),
      body: Center(
        child: Text("알람 화면"),
      ),
    );
  }
}
