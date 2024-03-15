import 'package:flutter/material.dart';
import 'notice_screen.dart';
import 'homescreen.dart';
import 'evaluate_screen.dart';
import 'mypagescreen.dart';
import 'evaluate_search_screen.dart';
import 'point_screen.dart';

class main_screen extends StatefulWidget {
  const main_screen({super.key});

  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {

  late List<GlobalKey<NavigatorState>> _navigatorKeyList;

  final _pages = [
    home_screen(),
    notice_screen(),
    evaluate_screen(),
    point_screen(),
    mypage_screen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatorKeyList = List.generate(_pages.length, (index) => GlobalKey<NavigatorState>());
  }

  int _current_index = 0;

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
        return !(await _navigatorKeyList[_current_index].currentState!.maybePop());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Navigator(
          key: _navigatorKeyList[_current_index],
          onGenerateRoute: (_) {
            return MaterialPageRoute(builder: (context) => _pages[_current_index]);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _current_index,
          onTap: (index) {
            setState(() {
              _current_index = index;
            });
          },
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
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          iconSize: 26,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
