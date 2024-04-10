import 'package:flutter/material.dart';
import 'notice_screen.dart';
import 'homescreen.dart';
import 'evaluate_screen.dart';
import 'mypagescreen.dart';
import 'evaluate_search_screen.dart';
import 'point_screen.dart';

class main_screen extends StatefulWidget {
  final String jwt;

  const main_screen({required this.jwt});

  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  late List<GlobalKey<NavigatorState>> _navigatorKeyList;

  late List<Widget> _pages = []; // 페이지 목록을 저장할 변수

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _updatePages();

    _navigatorKeyList =
        List.generate(_pages.length, (index) => GlobalKey<NavigatorState>());
  }

  void _updatePages() {
    _pages = [
      home_screen(jwt: widget.jwt),
      notice_screen(jwt: widget.jwt),
      evaluate_screen(jwt: widget.jwt),
      //point_screen(), // 현재 포인트 생략 상태
      mypage_screen(jwt: widget.jwt),
    ];
  }

  int _current_index = 0;

  @override
  Widget build(BuildContext context) {
    //sendGetRequest('${widget.jwt}');
    return WillPopScope(
      onWillPop: () async {
        return !(await _navigatorKeyList[_current_index]
            .currentState!
            .maybePop());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Navigator(
          key: _navigatorKeyList[_current_index],
          onGenerateRoute: (_) {
            return MaterialPageRoute(
                builder: (context) => _pages[_current_index]);
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
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.attach_money),
            //   label: '포인트',
            // ),
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
