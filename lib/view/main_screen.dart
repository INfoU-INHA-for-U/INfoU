import 'package:flutter/material.dart';
import 'package:myapp/view/evaluate_search_screen.dart';
import '../view/announce_screen.dart';
import '../view/homescreen.dart';
<<<<<<< HEAD:lib/main_screen.dart
import '../view/evaluate_screen.dart';
import 'package:myapp/view/mypagescreen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
=======
import '../view/rating_screen.dart';
import '../view/mypagescreen.dart';
import '../view/point_screen.dart';
>>>>>>> origin/okm1172:lib/view/main_screen.dart

class main_screen extends StatefulWidget {
  const main_screen({super.key});

  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
<<<<<<< HEAD:lib/main_screen.dart

  late List<GlobalKey<NavigatorState>> _navigatorKeyList;

  final _pages = [
    home_screen(),
    announce_screen(),
    evaluate_screen(),
    Scene(),
=======
  void _onItemTapped(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  final _screen_list = [
    home_screen(),
    notice_screen(),
    rating_screen(),
    point_screen(),
    mypage_screen()
>>>>>>> origin/okm1172:lib/view/main_screen.dart
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
        /*
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: '포인트',
            ),*/
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
        ),
        /*resizeToAvoidBottomInset: false,
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
        ),*/
      ),
    );
  }
}
