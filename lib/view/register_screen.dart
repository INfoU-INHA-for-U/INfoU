import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/view/beginning_login_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../class/current_token.dart';
import 'main_screen.dart';

//음.. 그냥 아래 하나하나 넣자.. 자주 사용하는것도 아닌데..
/*
List<String> page_name = [
  'register_screen',
  'register_screen_nickname',
  'register_screen_grade',
  'register_screen_major'
];

int page_index = 1;
*/

//맨 처음 닉네임을 결정하는 창에서 userAuthId를 받아오고 저장함.
//이 값은 현재 .dart파일 두개 이상의 widget에서 공용적으로 사용하는부분이기에 현재 위치에서 선언함.
CurrentToken _currentToken = CurrentToken();

class register_screen_nickname extends StatefulWidget {

  const register_screen_nickname({super.key});

  @override
  State<register_screen_nickname> createState() => _register_screen_nicknameState();
}

class _register_screen_nicknameState extends State<register_screen_nickname> {

  TextEditingController _controller = TextEditingController();

  //중복 검사 함수
  void duplicate_check_nickname() {

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => beginning_login_screen()), (route) => false);
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          titleSpacing: 5,
          title: Text(
            '회원가입',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('닉네임 입력',
                  style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                    )
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: '사용하실 닉네임을 입력해주세요.',
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[100],
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 5, 10, 5)
                    ),
                  ),
                  SizedBox(height: 3),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FilledButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.blue[100]),

                        ),
                        onPressed: () => duplicate_check_nickname(),
                        child: Text('중복확인', style: TextStyle(color: Colors.black54, fontSize: 15))
                    ),
                  ),
                ],
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 70,
                  child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Colors.blueAccent),
                      ),
                      onPressed: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: register_screen_grade())),
                      child: Text('다음', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))
                  ),
                ),
              )
            ],
          )
        )
      ),
    );
  }
}

class register_screen_grade extends StatefulWidget {
  const register_screen_grade({super.key});

  @override
  State<register_screen_grade> createState() => _register_screen_gradeState();
}

class _register_screen_gradeState extends State<register_screen_grade> {

  //0이 아무것도 선택 안된상태
  int _selected_grade = 0;

  Widget listview_grade_widget(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected_grade = index;
        });
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
        padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black26),
          color: index == _selected_grade ? Colors.black12 : Colors.white,
        ),
        child: Text(
          index.toString() + '학년' + (index==5 ? ' 이상' : ''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          //여길 row로 바꿔야하나?
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => beginning_login_screen()), (route) => false);
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          titleSpacing: 5,
          title: Text(
            '회원가입',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('학년 선택',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                      )
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 27,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => listview_grade_widget(index+1)
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2 - 40,
                      child: FilledButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Colors.blueAccent),
                          ),
                          onPressed: () => Navigator.pop(context, PageTransition(type: PageTransitionType.fade, child: register_screen_nickname())),
                          child: Text('이전', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2 - 40,
                      child: FilledButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                _selected_grade == 0 ? Colors.black12 : Colors.blueAccent),
                          ),
                          onPressed: () {
                            if(_selected_grade != 0) {
                              Navigator.push(context, PageTransition(
                                  type: PageTransitionType.fade,
                                  child: register_screen_major()));
                            }
                          },
                          child: Text('다음', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

class register_screen_major extends StatefulWidget {
  const register_screen_major({super.key});

  @override
  State<register_screen_major> createState() => _register_screen_majorState();
}

class _register_screen_majorState extends State<register_screen_major> {

  List<String> major_name_list = [
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
  ];

  int major_select_index = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          //여길 row로 바꿔야하나?
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => beginning_login_screen()),
                  (route) => false);
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          titleSpacing: 5,
          title: Text(
            '회원가입',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('주전공 선택',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Container(
                  height: MediaQuery.of(context).size.height-216,
                  child: ScrollConfiguration(
                    behavior: const ScrollBehavior().copyWith(overscroll: false),
                    child: ListView.builder(
                      itemCount: major_name_list.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            if(major_select_index == -1) {
                              major_select_index = index;
                            } else {
                              major_select_index = -1;
                            }
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.fromLTRB(2, 5, 0, 5),
                            child: Text(
                              major_name_list[index],
                              style: TextStyle(
                                fontSize: 18,
                                color: index == major_select_index ? Colors.black87 : Colors.black26,
                              ),
                            )),
                      ),
                    ),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    child: FilledButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blueAccent),
                        ),
                        onPressed: () => Navigator.pop(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: register_screen_grade())),
                        child:
                            Text('이전', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    child: FilledButton(
                        style: ButtonStyle(

                          backgroundColor:
                              MaterialStatePropertyAll(major_select_index != -1 ? Colors.blueAccent : Colors.black12),
                        ),
                        onPressed: () {
                          if(major_select_index != -1) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type:
                                     PageTransitionType.fade,
                                  child: register_screen_terms_and_condition()));
                            }
                        },
                        child:
                            Text('다음', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}

class register_screen_terms_and_condition extends StatefulWidget {
  const register_screen_terms_and_condition({super.key});

  @override
  State<register_screen_terms_and_condition> createState() => _register_screen_terms_and_conditionState();
}

class _register_screen_terms_and_conditionState extends State<register_screen_terms_and_condition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          //여길 row로 바꿔야하나?
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => beginning_login_screen()),
                      (route) => false);
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          titleSpacing: 5,
          title: Text(
            '회원가입',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('약관 동의',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height-216,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    child: FilledButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.blueAccent),
                        ),
                        onPressed: () => Navigator.pop(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: register_screen_major())),
                        child:
                        Text('이전', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    child: FilledButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.blueAccent),
                        ),
                        onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                    type:
                                    PageTransitionType.fade,
                                    //완료.
                                    child: main_screen()),
                            (route) => false,);
                        },
                        child:
                        Text('가입 완료', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}

