import 'package:flutter/material.dart';
import '../view/notice_screen.dart';
import '../view/homescreen.dart';
import '../view/rating_screen.dart';

class main_screen extends StatefulWidget {
  const main_screen({super.key});

  @override
  State<main_screen> createState() => _main_screenState();
}


class _main_screenState extends State<main_screen> {

  void _onItemTapped(int index) {
    setState(() {
      _selected_index = index;
    });
  }
  final _screen_list = [
    home_screen(),
    announce_screen(),
    evaluate_screen(),
  ];
  int _selected_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _screen_list[_selected_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: '공지사항',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: '강의평가',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: '포인트',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이',
          ),
        ],
        currentIndex: _selected_index,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
      ),
    );
  }
}
