import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../class/infou_search.dart';
import '../component/announce_tag.dart';
import '../component/fetch_data_infou.dart';

class evaluate_screen_popular_list extends StatefulWidget {

  const evaluate_screen_popular_list(
      {Key? key})
      : super(key: key);

  @override
  State<evaluate_screen_popular_list> createState() =>
      evaluate_screen_popular_listState();
}

class evaluate_screen_popular_listState
    extends State<evaluate_screen_popular_list> {

  late List<InfouSearch> _lecture_list;

  InfouSearch aba = InfouSearch(
    professorName: 'aa',
    department: 'aa',
    lectureName: 'aa',
    semester: 'aa',
    academicNumber: 'aa',
    agree: 0,
    disagree: 0,
    grade: 'aa',
    id: 'aa',
    lectureType: 'aa',
    level: 'aa',
    review: 'aa',
    score: 0,
    skill: 'aa',
    timestamp: DateTime(2),
    userId: 'aa',
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lecture_list = [aba,aba];
    //데이터 불러오기
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //_lecture_list = await getDataInfouPopular({'page' : 0, 'size' : 20, 'sort' : []});
      setState(() {});
    });
  }


  //참고 커뮤니티 목록
  List<String> _information_type = ['INHA', 'INfoU'];

  //INHA = 0 , INfoU = 1
  int _information_type_index = 1;

  int _upper_lower_index = 1;

  //순위 별 아이콘 선별
  Widget _rate_check(int index) {
    if(index==0) {
      return Text('🥇 ');
    }
    else if(index==1) {
      return Text('🥈 ');
    }
    else if(index==2) {
      return Text('🥉 ');
    }
    else
      return SizedBox(width: 22,height: 12);
  }

  Widget _evaluate_menu_search_screen_infou_list_widget(int index, InfouSearch _one_lecture_list) {
    //_one_lecture_list엔 listview에서 index에 따른 각각의 lecture 정보가 포함되어 있다.
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(_one_lecture_list.lectureName, style: TextStyle(fontWeight: FontWeight.w500)),
                      Text(' ' + _one_lecture_list.academicNumber,
                        style: TextStyle(
                          fontSize: 12, color: Colors.grey,
                        ),),
                    ],
                  ),
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(10, 3.5, 0, 0),
                    width: 290,
                    height: 25,
                    child: Text(_one_lecture_list.professorName + ' 교수 ', style: TextStyle(fontSize: 11))
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 2.5, 0, 0),
                  child: Text(_one_lecture_list.department, style: TextStyle(fontSize: 11)),
                ),
              ],
            ),
          ),
          //평균값을 내야 하는데, 임시로 넣어놨습니다 score로.
          Center(
            child: Text(double.parse(_one_lecture_list.score.toString()).toStringAsFixed(1),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
          scrolledUnderElevation: 0,
          title: const Text(
            '인기 강의평(교양)',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        titleSpacing: -7,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
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
                          Icon(Icons.access_alarm),
                          Text(_upper_lower_index==2 ? '내림차순' : '오름차순', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10))
                        ],
                      ),
                      onTap: () {
                        setState(() async {
                          _upper_lower_index = 3 - _upper_lower_index;
                          if(_upper_lower_index == 1) {
                            _lecture_list = await getDataInfouPopular({'page':0,'size':20,'sort':[]});
                          }
                          else if(_upper_lower_index == 2) {
                            _lecture_list = await getDataInfouPopular({'page':0,'size':20,'sort':['오름차순은 뭘 입력해야하나요?']});
                          }
                        });
                        print('오름차순');
                      }),
                ),
              )
            ]),
            Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 650,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => _evaluate_menu_search_screen_infou_list_widget(index, _lecture_list[index]),
                    separatorBuilder: (context, index) => Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    itemCount: _lecture_list.length
                )
            ),
          ],
        ),
      ),
    );
  }
}