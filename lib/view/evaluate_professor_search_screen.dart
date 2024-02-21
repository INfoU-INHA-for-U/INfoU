import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/class/lecture.dart';

class evaluate_professor_search_screen extends StatefulWidget {

  final List<Lecture> lecture_list;
  final String input_name;

  const evaluate_professor_search_screen(
      {Key? key, required this.lecture_list, required this.input_name})
      : super(key: key);

  @override
  State<evaluate_professor_search_screen> createState() =>
      _evaluate_professor_search_screenState();
}

class _evaluate_professor_search_screenState
    extends State<evaluate_professor_search_screen> {

  late List<Lecture> _lecture_list;

  //교수 검색 data 후처리 함수
  List<Lecture> lecture_professor_list_check(List<Lecture> lecture_list, String input_name) {
    List<Lecture> _return_lecture_list = [];
    for(int i=0;i<lecture_list.length;i++) {
      for(int j=0;j<lecture_list[i].professors.length;j++)
        {
          if(lecture_list[i].professors[j].name.contains(input_name)) {
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
    //학과 명에 따른 lecture_list를 추출함.
    _lecture_list = lecture_professor_list_check(widget.lecture_list, widget.input_name);
  }

  //참고 커뮤니티 목록
  List<String> _information_type = ['INHA', 'INfoU'];

  //INHA = 0 , INfoU = 1
  int _information_type_index = 1;

  //순위 별 아이콘 선별
  Widget _rate_check(int index) {
    //1등
    if(index==0) {
      return Icon(Icons.add);
    }
    //2등
    else if(index==1) {
      return Icon(Icons.abc);
    }
    //3등
    else if(index==2) {
      return Icon(Icons.ac_unit);
    }
    //나머지 (빈칸 처리)
    else
      return SizedBox(width: 22,height: 12);
  }

  Widget _evaluate_professor_search_screen_infou_list_widget(int index, Lecture _one_lecture_list) {
    //_one_lecture_list엔 listview에서 index에 따른 각각의 lecture 정보가 포함되어 있다.
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //1,2,3등은 아이콘/사진을 출력해야하기에 따로 함수화 하였음.
          _rate_check(index),
          //순위 출력
          Text((index+1).toString()),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 2.5, 0, 0),
                  child: Row(
                    children: [
                      Text(_one_lecture_list.lectureName),
                      Text(_one_lecture_list.academicNumber),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(10, 2.5, 0, 0),
                  width: 290,
                    height: 25,
                    //동일한 과목에 여러명의 교수님이 존재하기에, ListView로 구현함.
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Text(_one_lecture_list.professors[index].name);
                        },
                        itemCount: _one_lecture_list.professors.length
                    )
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 2.5, 0, 0),
                  child: Text(_one_lecture_list.department),
                ),
              ],
            ),
          ),
          //평점 기준을 몰라서 일단 가장 첫번째 평점인 option_1을 사용함. 추후 수정 가능.
          Center(
            child: Text(double.parse(_one_lecture_list.options['option_1']!).toStringAsFixed(1)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 3, color: Colors.black26),
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
                          fontWeight:
                          (index == _information_type_index)
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          height: 650,
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => _evaluate_professor_search_screen_infou_list_widget(index, _lecture_list[index]),
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                color: Colors.black,
              ),
              itemCount: _lecture_list.length
          )
        ),
      ],
    );
  }
}
