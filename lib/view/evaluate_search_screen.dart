import 'package:flutter/material.dart';
import 'package:myapp/class/lecture.dart';
import 'package:myapp/view/evaluate_professor_search_screen.dart';

class evaluate_search_screen extends StatefulWidget {

  final List<Lecture> lecture_list;

  const evaluate_search_screen({super.key, required this.lecture_list});

  @override
  State<evaluate_search_screen> createState() => _evaluate_search_screenState();
}

Widget class_search_widget() {
  return Column(
    children: [

    ],
  );
}

Widget major_search_widget() {
  return Column(
    children: [

    ],
  );
}

class _evaluate_search_screenState extends State<evaluate_search_screen> {

  TextEditingController? _controller = TextEditingController(text: '');

  late List<Lecture> _lecture_list;

  List<String> _search_menu = ['교수 검색','강의명 검색','학과 검색'];
  //0 : 교수 검색, 1 : 강의명 검색, 2 : 학과 검색
  int _search_menu_index_not_submitted = 0;
  int _search_menu_index_submitted = 3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lecture_list = widget.lecture_list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                        child: Icon(Icons.keyboard_backspace)
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: MediaQuery.of(context).size.width-100,
                      height: 35,
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 3),
                      child: Row(
                        children: [
                          Icon(Icons.search, size: 19),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: TextField(
                                controller: _controller,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                    hintText: '검색어를 입력해주세요',
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.black12)),
                                onSubmitted: (value) {
                                  _search_menu_index_submitted = _search_menu_index_not_submitted;
                                },
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  print(1);
                                  _controller?.text = '';
                                  //포커스 해제
                                  FocusManager.instance.primaryFocus?.unfocus();
                                });
                              },
                              child: Icon(Icons.cancel_outlined, size: 17)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              height: 30,
              child: Center(
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Text(
                      '|',
                      style: TextStyle(fontSize: 14),
                    );
                  },
                  itemCount: _search_menu.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _search_menu_index_not_submitted = index;
                        });
                        print(index);
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Text(
                          _search_menu[index],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight:
                              (index == _search_menu_index_not_submitted)
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            _search_menu_index_submitted == 0
                ? evaluate_professor_search_screen(lecture_list : _lecture_list, input_name : _controller!.text) :
            ((_search_menu_index_submitted == 1)
                ? class_search_widget() :
            (_search_menu_index_submitted==2
            ? major_search_widget() : Container())),
            ],
        ),
      )
    );
  }
}
