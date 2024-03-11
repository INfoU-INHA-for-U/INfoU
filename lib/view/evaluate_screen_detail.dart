import 'package:flutter/material.dart';
import 'package:myapp/view/evaluate_search_screen.dart';
import 'package:myapp/widget/header_no_detail.dart';
import 'package:myapp/widget/horizontal_select.dart';

import '../class/lecture.dart';

class EvaluateScreenDetail extends StatefulWidget {
  const EvaluateScreenDetail({super.key});

  @override
  State<EvaluateScreenDetail> createState() => _EvaluateScreenDetailState();
}

class _EvaluateScreenDetailState extends State<EvaluateScreenDetail> {
  late List<Lecture> _lecture_list;

  //값에 따라 강의평 홈 / 강의평 검색 / 강의평 추가 화면 을 setState로 구별.
  //아래에 있는 bottomNaviagtorBar때문.
  // 강의평 홈 = 0 / 강의평 검색 = 1 / 강의평 추가 화면 = 2
  int search_screen_state_number = 0;

  int? _purposeIndex;
  String? _purposeValue;
  int _rating = 4; // 초기 별점

  List _data = ['자료구조', '김영호'];

  //최근 강의평 위젯
  Widget _recent_evaluate_widget(int index) {
    Map _current_evaluate_data = _recent_evaluate_data[index.toString()];
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  _current_evaluate_data['class'] +
                      ' [' +
                      _current_evaluate_data['professor'] +
                      ']',
                  style: TextStyle(fontSize: 15)),
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
                      if (index < _current_evaluate_data['star_rate'])
                        return const Icon(Icons.star, color: Colors.amber);
                      else
                        return const Icon(Icons.star, color: Colors.grey);
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Text('추천도'),
                  Text(_current_evaluate_data['recommend_rate'].toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                        child: Row(
                          children: [
                            Text(_current_evaluate_data['evaluate1'] + ' ',
                                style: TextStyle(fontSize: 15)),
                            Icon(Icons.thumb_up_alt_outlined, size: 16)
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
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                          child: Row(
                            children: [
                              Text(_current_evaluate_data['evaluate2'] + ' ',
                                  style: TextStyle(fontSize: 15)),
                              Icon(Icons.thumb_down_alt_outlined, size: 16)
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
          // Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //   Text('추천도'),
          //   Text(_current_evaluate_data['recommend_rate'].toString(),
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))
          // ])
        ],
      ),
    );
  }

  Map _recent_evaluate_data = {
    '0': {
      'class': '파이썬 프로그래밍',
      'professor': '서영덕',
      'star_rate': 4,
      'evaluate1': '정말 좋아요',
      'evaluate2': '적당해요',
      'recommend_rate': 4.7
    },
    // '1': {
    //   'class': '클라우드 컴퓨팅',
    //   'professor': '권구인',
    //   'star_rate': 4,
    //   'evaluate1': '정말 좋아요',
    //   'evaluate2': '어려워요',
    //   'recommend_rate': 4.9
    // },
  };

  @override
  Widget build(BuildContext context) {
    _purposeIndex = 1;
    _purposeValue = '1';

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: [
        IconButton(
            onPressed: () {
              setState(() {
                search_screen_state_number = 1;
                //Navigator.pushNamed나 Get.to 사용 안됩니다..
                //업데이트 된 수강 정보를 _lecture_list를 넘겨줌.
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => evaluate_search_screen(
                            lecture_list: _lecture_list)));
              });
            },
            icon: Icon(
              Icons.search,
              size: 25,
              color: Colors.black54,
            )),
      ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.1, 0, 10, 5),
                child: Row(
                  children: [
                    const Text('과목      ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                    Text(_data[0],
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.1, 0, 10, 5),
                child: Row(
                  children: [
                    const Text('교수     ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                    Text(_data[1],
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ],
                ),
              ),
              HeaderNoDetail(header_name: '나와 비슷한 사용자가 많이 조회한 강의평'),
              Container(
                height: 260,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15)),
                          height: 170,
                          child: _recent_evaluate_widget(index),
                        ));
                  },
                  itemCount: _recent_evaluate_data.length,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.05, 10, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              // 별을 누를 때마다 현재 탭한 별까지의 별점을 업데이트
                              _rating = index + 1;
                            });
                          },
                          child: Image.asset(
                            index < _rating
                                ? 'assets/images/gold_star.png'
                                : 'assets/images/grey_star.png',
                            width: 35,
                            height: 20,
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$_rating', // 현재 선택된 별점을 텍스트로 표시
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' / 5.0', // 현재 선택된 별점을 텍스트로 표시
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showReviewSubmittedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('알림'),
        content: Text('강의평이 등록되었습니다.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('확인'),
          ),
        ],
      );
    },
  );
}
