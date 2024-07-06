import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infou/class/lecture.dart';
import 'package:infou/view/evaluate_screen_detail.dart';

import '../component/announce_tag.dart';

class evaluate_menu_search_screen extends StatefulWidget {
  final List<Lecture> lecture_list;
  final String input_name;
  final int selected_menu_index;

  const evaluate_menu_search_screen(
      {Key? key,
      required this.lecture_list,
      required this.input_name,
      required this.selected_menu_index})
      : super(key: key);

  @override
  State<evaluate_menu_search_screen> createState() =>
      _evaluate_menu_search_screenState();
}

class _evaluate_menu_search_screenState
    extends State<evaluate_menu_search_screen> {
  late List<Lecture> _lecture_list;

  //강의명 검색 data 후처리 함수
  List<Lecture> lecture_class_list_check(
      List<Lecture> lecture_list, String input_name) {
    List<Lecture> _return_lecture_list = [];
    for (int i = 0; i < lecture_list.length; i++) {
      if (lecture_list[i].lectureName.contains(input_name)) {
        _return_lecture_list.add(lecture_list[i]);
      }
    }
    return _return_lecture_list;
  }

  List<Lecture> lecture_major_list_check(
      List<Lecture> lecture_list, String input_name) {
    List<Lecture> _return_lecture_list = [];
    for (int i = 0; i < lecture_list.length; i++) {
      if (lecture_list[i].department.contains(input_name)) {
        _return_lecture_list.add(lecture_list[i]);
      }
    }
    return _return_lecture_list;
  }

  List<Lecture> lecture_professor_list_check(
      List<Lecture> lecture_list, String input_name) {
    List<Lecture> _return_lecture_list = [];
    for (int i = 0; i < lecture_list.length; i++) {
      for (int j = 0; j < lecture_list[i].professors.length; j++) {
        if (lecture_list[i].professors[j].name.contains(input_name)) {
          _return_lecture_list.add(lecture_list[i]);
        }
      }
    }
    print(_return_lecture_list[0].department);
    return _return_lecture_list;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.selected_menu_index);
    //선택한 menu에 따라 index를 참고하여 필요한 정보의 list를 추출함.
    if (widget.selected_menu_index == 0) {
      _lecture_list =
          lecture_professor_list_check(widget.lecture_list, widget.input_name);
    } else if (widget.selected_menu_index == 1) {
      _lecture_list =
          lecture_class_list_check(widget.lecture_list, widget.input_name);
    } else if (widget.selected_menu_index == 2) {
      _lecture_list =
          lecture_major_list_check(widget.lecture_list, widget.input_name);
      print(_lecture_list.length.toString());
    }
  }

  //참고 커뮤니티 목록
  List<String> _information_type = ['INHA', 'INfoU'];

  //INHA = 0 , INfoU = 1
  int _information_type_index = 1;

  int _upper_lower_index = 1;

  //순위 별 아이콘 선별
  Widget _rate_check(int index) {
    if (index == 0) {
      return Text('🥇 ');
    } else if (index == 1) {
      return Text('🥈 ');
    } else if (index == 2) {
      return Text('🥉 ');
    } else
      return SizedBox(width: 22, height: 12);
  }

  Widget _evaluate_menu_search_screen_infou_list_widget(
      int index, Lecture _one_lecture_list) {
    //_one_lecture_list엔 listview에서 index에 따른 각각의 lecture 정보가 포함되어 있다.
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 95,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _rate_check(index),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Text((index + 1).toString()),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 13, 0, 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 2.5, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(_one_lecture_list.lectureName,
                          style: TextStyle(fontWeight: FontWeight.w800)),
                      Text(
                        ' ' + _one_lecture_list.academicNumber,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 3.5, 0, 0),
                    width: 230,
                    height: 25,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Text(
                              _one_lecture_list.professors[index].name + ' 교수 ',
                              style: TextStyle(fontSize: 11));
                        },
                        itemCount: _one_lecture_list.professors.length)),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 2.5, 0, 0),
                  child: Text(_one_lecture_list.department,
                      style: TextStyle(fontSize: 11)),
                ), /*
                Container(
                  padding: EdgeInsets.fromLTRB(10, 6, 0, 0),
                  width: 200,
                    height: 28,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return announce_tag_widget(index);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 4,height: 20);
                      },
                    )
                )*/
              ],
            ),
          ),
          Center(
            child: Text(
                double.parse(_one_lecture_list.options['option_1']!)
                    .toStringAsFixed(1),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(thickness: 3, color: Colors.black26),
          Stack(children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 3),
              height: 33,
              child: Center(
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Text(
                      '|',
                      style: TextStyle(fontSize: 14),
                    );
                  },
                  itemCount: _information_type.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        setState(() {
                          _information_type_index = index;
                        });
                        print(index);
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Text(
                          _information_type[index],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: (index == _information_type_index)
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 2.5, 10, 0),
                child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.filter_list, size: 16),
                        Text(_upper_lower_index == 2 ? '내림차순' : '오름차순',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10))
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        if (_upper_lower_index == 0) {
                          _upper_lower_index = 1;
                        } else {
                          _upper_lower_index = 3 - _upper_lower_index;
                        }
                      });
                      print('오름차순');
                    }),
              ),
            )
          ]),
          Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 580,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EvaluateScreenDetail(
                                academicNumber: 'CS101',
                                department: '컴퓨터공학과',
                                professorName: '서영덕',
                                lectureName: '컴퓨터 프로그래밍',
                                lectureType: '전공필수',
                              ),
                            ),
                          );
                        },
                        child: _evaluate_menu_search_screen_infou_list_widget(
                            index, _lecture_list[index]),
                      ),
                  separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Container(
                          width: double.infinity, // 상위 위젯의 width와 일치
                          height: 1, // 원하는 높이 설정
                          color: Color(0xFFBBBBBB), // BBBBBB 색상 설정
                        ),
                      ),
                  itemCount: _lecture_list.length)),
        ],
      ),
    );
  }
}
