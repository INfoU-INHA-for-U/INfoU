import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:myapp/view/beginning_login_screen.dart';
import 'package:myapp/view/evaluate_screen_detail.dart';
import 'package:myapp/view/evaluate_screen_write.dart';
import 'package:myapp/class/lecture.dart';
import 'package:myapp/widget/header.dart';
import 'package:page_transition/page_transition.dart';
import '../class/infou_search.dart';
import '../class/trash_data.dart';
import '../component/fetch_data.dart';
import '../component/fetch_data_infou.dart';
import '../main.dart';
import 'evaluate_screen_popular_list.dart';
import 'evaluate_search_screen.dart';

class evaluate_screen extends StatefulWidget {
  const evaluate_screen({super.key});

  @override
  State<evaluate_screen> createState() => _evalute_screenState();
}

class _evalute_screenState extends State<evaluate_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //새로운 api 형식에 따라 넣어뒀음. class lecture에 하나하나씩 차곡차곡 쌓이게 작업해뒀고,
    //그중 가장 첫번째 데이터를 정리해서 print로 출력하였으니 참고바람.
  }

  // component/fetch_data에서 가져온 데이터를 return해서 lits를 evaluate_screen에서 받아줌.
  late List<Lecture> _lecture_list;

  //값에 따라 강의평 홈 / 강의평 검색 / 강의평 추가 화면 을 setState로 구별.
  //아래에 있는 bottomNaviagtorBar때문.
  // 강의평 홈 = 0 / 강의평 검색 = 1 / 강의평 추가 화면 = 2
  int search_screen_state_number = 0;

  List<InfouPopular> _popular_evaluate_data = [];
  List<InfouSearch> _recent_evaluate_data = [];

  String summarize_name(String aa) {
    if (aa.length > 13) {
      return aa.substring(0, 13) + '...';
    } else
      return aa;
  }

  //최근 강의평 위젯
  Widget _recent_evaluate_widget(
      int index, List<dynamic> _recent_evaluate_data) {
    InfouSearch _current_evaluate_data = _recent_evaluate_data[index];
    return Padding(
      padding: EdgeInsets.fromLTRB(13, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                child: Text(
                    _current_evaluate_data.lectureName +
                        ' [' +
                        summarize_name(_current_evaluate_data.professorName) +
                        ']',
                    style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Container(
                  width: 200,
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      //별 표시해주는겁니다. api식으로 바로 사용할수있게 코딩해놨습니다.
                      if (index < _current_evaluate_data.score)
                        return const Icon(Icons.star, color: Colors.amber);
                      else
                        return const Icon(Icons.star, color: Colors.grey);
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                        child: Row(
                          children: [
                            Text(_current_evaluate_data.skill + ' ',
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                          child: Row(
                            children: [
                              Text(_current_evaluate_data.level + ' ',
                                  style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        )),
                  )
                ],
              )
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('추천도'),
            //여기 수정해야함 평점 평균내서
            Text(_current_evaluate_data.score.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))
          ])
        ],
      ),
    );
  }

  Widget _popular_evaluate_widget(
      int index, List<dynamic> _recent_evaluate_data) {
    InfouPopular _current_evaluate_data = _recent_evaluate_data[index];
    return Padding(
      padding: EdgeInsets.fromLTRB(13, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                child: Text(
                    _current_evaluate_data.lectureName +
                        ' [' +
                        summarize_name(_current_evaluate_data.professorName) +
                        ']',
                    style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Container(
                  width: 200,
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      //별 표시해주는겁니다. api식으로 바로 사용할수있게 코딩해놨습니다.
                      if (index < _current_evaluate_data.averageValue.toInt())
                        return const Icon(Icons.star, color: Colors.amber);
                      else
                        return const Icon(Icons.star, color: Colors.grey);
                    },
                  ),
                ),
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('추천도'),
            //여기 수정해야함 평점 평균내서
            Text(_current_evaluate_data.averageValue.toStringAsFixed(1),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))
          ])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            scrolledUnderElevation: 0,
            title: const Text(
              'InfoU',
              style: TextStyle(color: Colors.blueAccent),
            ),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      search_screen_state_number = 1;
                      //Navigator.pushNamed나 Get.to 사용 안됩니다..
                      //업데이트 된 수강 정보를 _lecture_list를 넘겨줌.
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              //많은 수정이 필요할것 같습니다..
                              child: evaluate_search_screen(
                                  lecture_list: _lecture_list)));
                    });
                  },
                  icon: Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.black54,
                  )),
            ]),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('최근 강의평',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
                FutureBuilder(future: Future(
                  () async {
                    _recent_evaluate_data = await getDataInfouRecent({
                      'page': 0,
                      'size': 2,
                      'sort': ["timestamp,asc"]
                    });
                    if (_recent_evaluate_data == [AA.aa])
                      return 1;
                    else
                      return 2;
                  },
                ), builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data == 2) {
                    return Container(
                      height: 260,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: EvaluateScreenDetail(
                                        academicNumber:
                                            _recent_evaluate_data[index]
                                                .academicNumber,
                                        lectureName:
                                            _recent_evaluate_data[index]
                                                .lectureName,
                                        professorName:
                                            _recent_evaluate_data[index]
                                                .professorName,
                                        lectureType:
                                            _recent_evaluate_data[index]
                                                .lectureType,
                                        department: _recent_evaluate_data[index]
                                            .department,
                                      ),
                                      type: PageTransitionType.fade));
                            },
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(15)),
                                  height: 110,
                                  child: _recent_evaluate_widget(
                                      index, _recent_evaluate_data),
                                )),
                          );
                        },
                        itemCount: _recent_evaluate_data.length,
                      ),
                    );
                  } else if (snapshot.hasData && snapshot.data == 1) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        PageTransition(
                            child: beginning_login_screen(),
                            type: PageTransitionType.fade),
                        (route) => false);
                    return Container();
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                          ],
                        ));
                  } else {
                    return Center(child: Text('No data available'));
                  }
                }),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('인기 교양 순위보기',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: evaluate_screen_popular_list())),
                          child: Text(
                            '더 보기 > ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
                FutureBuilder(future: Future(
                  () async {
                    _popular_evaluate_data = await getDataInfouPopular(
                        {'page': 0, 'size': 3, 'sort': []});
                    if (_popular_evaluate_data == [BB.aa])
                      return 1;
                    else
                      return 2;
                  },
                ), builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data == 2) {
                    print(snapshot.data);
                    return Container(
                      //여기에 블러 처리 되어있음. 블러 처리 방식도 따로 component형식으로 widget으로 빼놓으면 됨.
                      //현재는 블러 처리된 widget으로 넣어둠.
                      height: 400,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: EvaluateScreenDetail(
                                        academicNumber:
                                            _popular_evaluate_data[index]
                                                .academicNumber,
                                        lectureName:
                                            _popular_evaluate_data[index]
                                                .lectureName,
                                        professorName:
                                            _popular_evaluate_data[index]
                                                .professorName,
                                        lectureType:
                                            _popular_evaluate_data[index]
                                                .lectureType,
                                        department:
                                            _popular_evaluate_data[index]
                                                .department,
                                      ),
                                      type: PageTransitionType.fade));
                            },
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(15)),
                                  height: 110,
                                  child: _popular_evaluate_widget(
                                      index, _popular_evaluate_data),
                                )),
                          );
                        },
                        itemCount: _popular_evaluate_data.length,
                      ),
                    );
                  } else if (snapshot.hasData && snapshot.data == 1) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        PageTransition(
                            child: beginning_login_screen(),
                            type: PageTransitionType.fade),
                        (route) => false);
                    return Container();
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                          ],
                        ));
                  } else {
                    return Center(child: Text('No data available'));
                  }
                }),
              ],
            ),
          ),
        ));
  }
}
