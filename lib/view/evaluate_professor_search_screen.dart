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

  //테스트를 위해 professor가 아닌 잠간의 학과 검색으로 대체합니다

  List<Lecture> lecture_major_list_check(List<Lecture> lecture_list, String input_name) {
    List<Lecture> _return_lecture_list = [];
    for(int i=0;i<lecture_list.length;i++)
      {
        if(lecture_list[i].department.contains(input_name)){
          _return_lecture_list.add(lecture_list[i]);
        }
      }
    return _return_lecture_list;
  }
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
    //professor에 따른 lecture_list를 추출함.
    _lecture_list = lecture_major_list_check(widget.lecture_list, widget.input_name);
    //_lecture_list = lecture_professor_list_check(widget.lecture_list, widget.input_name);
  }

  List<String> _information_type = ['INHA', 'INfoU'];

  //INHA = 0 , INfoU = 1
  int _information_type_index = 1;

  Widget _rate_check(int index) {
    if(index==0) {
      return Icon(Icons.add);
    }
    else if(index==1) {
      return Icon(Icons.abc);
    }
    else if(index==2) {
      return Icon(Icons.ac_unit);
    }
    else
      return SizedBox(width: 22,height: 12);
  }

  Widget _evaluate_professor_search_screen_infou_list_widget(int index, Lecture _one_lecture_list) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _rate_check(index),
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
