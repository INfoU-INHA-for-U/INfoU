import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infou/class/lecture.dart';
import 'package:page_transition/page_transition.dart';
import 'package:infou/view/notice_search_screen.dart';

import '../class/infou_search.dart';
import '../class/trash_data.dart';
import '../component/announce_tag.dart';
import '../component/fetch_data_infou.dart';
import 'beginning_login_screen.dart';
import 'evaluate_screen_detail.dart';

class evaluate_screen_popular_list extends StatefulWidget {
  final List<Lecture> lecture_list;

  const evaluate_screen_popular_list({super.key, required this.lecture_list});

  @override
  State<evaluate_screen_popular_list> createState() =>
      evaluate_screen_popular_listState();
}

class evaluate_screen_popular_listState
    extends State<evaluate_screen_popular_list> {
  late List<Lecture> _lecture_list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 500));
    _lecture_list = widget.lecture_list;
  }

  //List<InfouPopular> _lecture_list = [];
  //참고 커뮤니티 목록
  List<String> _information_type = ['INHA', 'INfoU'];

  //INHA = 0 , INfoU = 1
  int _information_type_index = 1;

  //1 : 오름차순 2 : 내림차순
  int _upper_lower_index = 2;

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

  //Widget _evaluate_menu_search_screen_infou_list_widget(
  //     int index, InfouPopular _one_lecture_list) {
  //   //_one_lecture_list엔 listview에서 index에 따른 각각의 lecture 정보가 포함되어 있다.
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: 70,
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: [
  //         _rate_check(index),
  //         Text((index + 1).toString()),
  //         Padding(
  //           padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Padding(
  //                 padding: EdgeInsets.fromLTRB(10, 2.5, 0, 0),
  //                 child: Row(
  //                   crossAxisAlignment: CrossAxisAlignment.end,
  //                   children: [
  //                     Text(_one_lecture_list.lectureName,
  //                         style: TextStyle(fontWeight: FontWeight.w500)),
  //                     Text(
  //                       ' ' + _one_lecture_list.academicNumber,
  //                       style: TextStyle(
  //                         fontSize: 12,
  //                         color: Colors.grey,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               Container(
  //                   padding: EdgeInsets.fromLTRB(10, 3.5, 0, 0),
  //                   width: 290,
  //                   height: 25,
  //                   child: Text(_one_lecture_list.professorName + ' 교수 ',
  //                       style: TextStyle(fontSize: 11))),
  //               Padding(
  //                 padding: EdgeInsets.fromLTRB(10, 2.5, 0, 0),
  //                 child: Text(_one_lecture_list.department,
  //                     style: TextStyle(fontSize: 11)),
  //               ),
  //             ],
  //           ),
  //         ),
  //         //평균값을 내야 하는데, 임시로 넣어놨습니다 score로.
  //         Center(
  //           child: Text(
  //               double.parse(_one_lecture_list.averageValue.toString())
  //                   .toStringAsFixed(1),
  //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
  //         )
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        scrolledUnderElevation: 0,
        title: const Text(
          '인기 강의평',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        titleSpacing: -7,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
                            Icon(Icons.filter_list, size: 16),
                            Text(_upper_lower_index == 2 ? '내림차순' : '오름차순',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10))
                          ],
                        ),
                        onTap: () {
                          setState(() {
                            _upper_lower_index = 3 - _upper_lower_index;
                          });
                          print('오름차순');
                        }),
                  ),
                )
              ]),

              Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 730,
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
                            child:
                                _evaluate_menu_search_screen_infou_list_widget(
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
              // Container(
              //   height: MediaQuery.of(context).size.height - 201,
              //   child: FutureBuilder(future: Future(
              //     () async {
              //       if (_upper_lower_index == 1) {
              //         _lecture_list = await getDataInfouPopular(
              //             {'page': 0, 'size': 20, 'sort': []});
              //       } else {
              //         //오름차순은 sort에 뭘 집어 넣어야하나요..
              //         _lecture_list = await getDataInfouPopular(
              //             {'page': 0, 'size': 20, 'sort': []});
              //       }
              //       if (_lecture_list == [AA.aa])
              //         return 1;
              //       else
              //         return 2;
              //     },
              //   ), builder: (context, snapshot) {
              //     if (snapshot.hasData && snapshot.data == 2) {
              //       return Container(
              //           padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              //           child: ListView.separated(
              //               physics: NeverScrollableScrollPhysics(),
              //               scrollDirection: Axis.vertical,
              //               itemBuilder: (context, index) => GestureDetector(
              //                     onTap: () => Navigator.push(
              //                         context,
              //                         PageTransition(
              //                             child: EvaluateScreenDetail(
              //                               academicNumber: _lecture_list[index]
              //                                   .academicNumber,
              //                               lectureName:
              //                                   _lecture_list[index].lectureName,
              //                               professorName: _lecture_list[index]
              //                                   .professorName,
              //                               lectureType:
              //                                   _lecture_list[index].lectureType,
              //                               department:
              //                                   _lecture_list[index].department,
              //                             ),
              //                             type: PageTransitionType.fade)),
              //                     child:
              //                         _evaluate_menu_search_screen_infou_list_widget(
              //                             index, _lecture_list[index]),
              //                   ),
              //               separatorBuilder: (context, index) => Divider(
              //                     thickness: 1,
              //                     color: Colors.black,
              //                   ),
              //               itemCount: _lecture_list.length));
              //     } else if (snapshot.hasData && snapshot.data == 1) {
              //       Navigator.pushAndRemoveUntil(
              //           context,
              //           PageTransition(
              //               child: beginning_login_screen(),
              //               type: PageTransitionType.fade),
              //           (route) => false);
              //       return Container();
              //     } else if (snapshot.connectionState ==
              //         ConnectionState.waiting) {
              //       return Container(
              //           color: Colors.white,
              //           width: MediaQuery.of(context).size.width,
              //           height: MediaQuery.of(context).size.height,
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             children: [
              //               CircularProgressIndicator(),
              //             ],
              //           ));
              //     } else {
              //       return Center(child: Text('No data available'));
              //     }
              //   }),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
