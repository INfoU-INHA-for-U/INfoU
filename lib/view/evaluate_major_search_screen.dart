import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/class/lecture.dart';

class evaluate_major_search_screen extends StatefulWidget {

  final List<Lecture> lecture_list;
  final String input_name;

  const evaluate_major_search_screen(
      {Key? key, required this.lecture_list, required this.input_name})
      : super(key: key);

  @override
  State<evaluate_major_search_screen> createState() =>
      _evaluate_major_search_screenState();
}

class _evaluate_major_search_screenState
    extends State<evaluate_major_search_screen> {

  late List<Lecture> _lecture_list;

  //0 : 기본, 1 : 오름차순, 2 : 내림차순
  int _upper_lower_index = 0;

  //학과 검색 data 후처리 함수
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //학과 명에 따른 lecture_list를 추출함.
    _lecture_list = lecture_major_list_check(widget.lecture_list, widget.input_name);
    //_lecture_list = lecture_professor_list_check(widget.lecture_list, widget.input_name);
    //_lecture_list = lecture_class_list_check(widget.lecture_list, widget.input_name);
  }

  //참고 커뮤니티 목록
  List<String> _information_type = ['INHA', 'INfoU'];

  //INHA = 0 , INfoU = 1
  int _information_type_index = 1;

  //순위 별 아이콘 선별
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

  Widget _evaluate_major_search_screen_infou_list_widget(int index, Lecture _one_lecture_list) {
    //_one_lecture_list엔 listview에서 index에 따른 각각의 lecture 정보가 포함되어 있다.
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
        Stack(
          children: [
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
                        Icon(Icons.access_alarm),
                        Text(_upper_lower_index==2 ? '내림차순' : '오름차순', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10))
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        if(_upper_lower_index == 0) {
                          _upper_lower_index = 1;
                        }
                        else {
                          _upper_lower_index = 3 - _upper_lower_index;
                        }
                      });
                      print('오름차순');
                    }),
              ),
            )
          ],
        ),
        Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 650,
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => _evaluate_major_search_screen_infou_list_widget(index, _lecture_list[index]),
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
