import 'package:flutter/material.dart';
import 'package:infou/view/evaluate_screen_write.dart';
import 'package:infou/view/evaluate_search_screen.dart';
import 'package:infou/widget/header_no_detail.dart';
import 'package:infou/widget/horizontal_select.dart';
import 'package:page_transition/page_transition.dart';

import '../class/infou_search.dart';
import '../class/lecture.dart';
import '../component/fetch_data_infou.dart';

class EvaluateScreenDetail_2 extends StatefulWidget {
  final String academicNumber;
  final String professorName;
  final String lectureName;
  final String lectureType;
  final String department;
  const EvaluateScreenDetail_2(
      {super.key,
      required this.department,
      required this.lectureType,
      required this.lectureName,
      required this.academicNumber,
      required this.professorName});

  @override
  State<EvaluateScreenDetail_2> createState() => _EvaluateScreenDetail_2State();
}

class _EvaluateScreenDetail_2State extends State<EvaluateScreenDetail_2> {
  int _upper_lower_index = 1;

  List<Lecture> _lecture_list2 = [];
  List<InfouSearch> _lecture_list = [
    InfouSearch(
      id: "12345",
      timestamp: DateTime.now(),
      lectureName: "컴퓨터 프로그래밍",
      lectureType: "Elective",
      professorName: "서영덕",
      academicNumber: "CS101",
      skill: "Intermediate",
      level: "400",
      score: 4.5,
      review: "지금까지 들었던 수업중에 가장 만족도가 높았던 것 같습니다. 기회가 된다면 진짜 교수님한테 감사인사 드리고싶어요.",
      agree: 50,
      disagree: 2,
      userId: "user123",
      department: "Computer Science",
      semester: "2023 1",
      grade: "A",
    ),
    InfouSearch(
      id: "12345",
      timestamp: DateTime.now(),
      lectureName: "컴퓨터 프로그래밍",
      lectureType: "Elective",
      professorName: "서영덕",
      academicNumber: "CS101",
      skill: "Intermediate",
      level: "400",
      score: 5,
      review: "수업이 즐거웠습니다 :)",
      agree: 50,
      disagree: 2,
      userId: "user123",
      department: "Computer Science",
      semester: "2023 2",
      grade: "A",
    )
  ];
  List<InfouPopular> _lecture_recommend_list = [
    InfouPopular(
      id: "67890",
      academicNumber: "CS101",
      lectureName: "컴퓨터 공학 입문 프로그래밍",
      lectureType: "Elective",
      professorName: "서영덕",
      department: "Computer Science",
      averageValue: 4.9,
      sumValue: 84.0,
      count: 20,
    ),
    InfouPopular(
      id: "67890",
      academicNumber: "CS101",
      lectureName: "자료구조",
      lectureType: "Elective",
      professorName: "심정섭",
      department: "Computer Science",
      averageValue: 4.8,
      sumValue: 84.0,
      count: 20,
    ),
    InfouPopular(
      id: "67890",
      academicNumber: "CS101",
      lectureName: "자료구조",
      lectureType: "Elective",
      professorName: "서영덕",
      department: "Computer Science",
      averageValue: 4.7,
      sumValue: 84.0,
      count: 20,
    )
  ];
  String _academicNumber = '';
  String _professorName = '';
  String _lectureName = '';
  String _lectureType = '';
  String _department = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _academicNumber = widget.academicNumber;
    _professorName = widget.professorName;
    _lectureName = widget.lectureName;
    _lectureType = widget.lectureType;
    _department = widget.department;
  }

  InfouSearch searchExample = InfouSearch(
    id: "12345",
    timestamp: DateTime.now(),
    lectureName: "컴퓨터 프로그래밍",
    lectureType: "Elective",
    professorName: "서영덕",
    academicNumber: "CS101",
    skill: "Intermediate",
    level: "400",
    score: 4.5,
    review: "지금까지 들었던 수업중에 가장 만족도가 높았던 것 같습니다. 기회가 된다면 진짜 교수님한테 감사인사 드리고싶어요.",
    agree: 50,
    disagree: 2,
    userId: "user123",
    department: "Computer Science",
    semester: "2023 1",
    grade: "A",
  );

  // 예시데이터
  final List<Map<String, dynamic>> scores = [
    {'label': '수업방식의 적절성', 'score': 4.8},
    {'label': '강의계획서 적절성', 'score': 4.7},
    {'label': '수업 성과1', 'score': 5.0},
    {'label': '수업 성과2', 'score': 4.9},
    {'label': '추천도', 'score': 4.6},
  ];

  // InfouPopular 예시 데이터
  InfouPopular popularExample = InfouPopular(
    id: "67890",
    academicNumber: "CS101",
    lectureName: "Advanced Flutter",
    lectureType: "Elective",
    professorName: "Dr. John Doe",
    department: "Computer Science",
    averageValue: 4.2,
    sumValue: 84.0,
    count: 20,
  );

  final int satisfactionPercentage = 90; // API로 받아와야 하는 데이터

  //값에 따라 강의평 홈 / 강의평 검색 / 강의평 추가 화면 을 setState로 구별.
  //아래에 있는 bottomNaviagtorBar때문.
  // 강의평 홈 = 0 / 강의평 검색 = 1 / 강의평 추가 화면 = 2
  int search_screen_state_number = 0;

  int? _purposeIndex;
  String? _purposeValue;
  int _rating = 4; // 초기 별점

  //최근 강의평 위젯
  Widget _recent_evaluate_widget(int index) {
    InfouPopular _current_evaluate_data = _lecture_recommend_list[index];
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('과목      '),
                  Text(
                      _current_evaluate_data.lectureName == ''
                          ? '                               '
                          : _current_evaluate_data.lectureName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
              Row(
                children: [
                  Text('교수      '),
                  Text(_current_evaluate_data.professorName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
              Row(
                children: [
                  Text('추천도   '),
                  Text(_current_evaluate_data.averageValue.toStringAsFixed(1),
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15))
                ],
              ), /*
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
                      ),
                    ),
                  )
                ],
              ),*/
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

  Widget class_detail(int index) {
    double calcScore() {
      return double.parse((_lecture_list[index].score).toStringAsFixed(2));
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('과목           ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text(_lecture_list[index].lectureName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
              Row(
                children: [
                  Text('교수           ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text(_lecture_list[index].professorName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
              Row(
                children: [
                  Text('수강학기    ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text(
                      _lecture_list[index].semester.substring(0, 4) +
                          '년도 ' +
                          _lecture_list[index].semester.substring(5, 6) +
                          '학기',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(5, (index) {
                      return Image.asset(
                        index < calcScore().floor()
                            ? 'assets/images/gold_star.png'
                            : 'assets/images/grey_star.png',
                        width: 25,
                        height: 18,
                      );
                    }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    calcScore().toString(), // 현재 선택된 별점을 텍스트로 표시
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' / 5.0', // 현재 선택된 별점을 텍스트로 표시
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 300,
                    height: 85,
                    child: Text(_lecture_list[index].review,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15)),
                  )
                ],
              ),
            ],
          ),
          //????????????? 이부분은 왜.. 하다만건지..
          //이정도에서 손 때겠습니다..ㅎㅎ..
          // Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //   Text('추천도'),
          //   Text(_current_evaluate_data['recommend_rate'].toString(),
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))
          // ])
        ],
      ),
    );
  }

  Widget percent_bar(
    String classLevel,
    String detail,
    double satisfactionPercentage,
  ) {
    return Row(
      children: [
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 7 + 13,
                  child: Text(classLevel + ' '),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 7 + 13,
                  child: Text(detail + ' '),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 100 * 46.4 -
                      60, // 가로 바의 일정한 길이
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300, // 내부 바의 색상
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: 0.8, //satisfactionPercentage / 100,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, // 내부 바의 색상
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '80%', //'${satisfactionPercentage.toInt()}%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

/*
  Map _recent_evaluate_data = {
    '0': {
      'class': '파이썬 프로그래밍',
      'professor': '서영덕',
      'star_rate': 4,
      'evaluate1': '정말 좋아요',
      'evaluate2': '적당해요',
      'recommend_rate': 4.7
    },
    '1': {
      'class': '클라우드 컴퓨팅',
      'professor': '권구인',
      'star_rate': 4,
      'evaluate1': '정말 좋아요',
      'evaluate2': '어려워요',
      'recommend_rate': 4.9
    },
  };

  Map _class_info_detail = {
    '0': {
      'class': '파이썬 프로그래밍',
      'professor': '서영덕',
      'date': '2023년도 2학기',
      'teaching_level': '만족해요',
      'class_level': '어려워요',
      'recommend_rate': 4.9,
      'desctiption':
          '지금까지 들었던 수업중에 가장 만족도가 높았던 것 같습니다. 언제 기회가 된다면 진짜 교수님한테 밥 사드리고 싶어요'
    },
    '1': {
      'class': '클라우드 컴퓨팅',
      'professor': '권구인',
      'date': '2023년도 2학기',
      'teaching_level': '만족해요',
      'class_level': '어려워요',
      'recommend_rate': 4.9,
      'desctiption':
          '지금까지 들었던 수업중에 가장 만족도가 높았던 것 같습니다. 언제 기회가 된다면 진짜 교수님한테 밥 사드리고 싶어요'
    },
  };
*/
  @override
  Widget build(BuildContext context) {
    _purposeIndex = 1;
    _purposeValue = '1';
    String _skill_data = '';
    double _skill_data_rate = 50;
    String _grade_data = '';
    double _grade_data_rate = 40;
    String _level_data = '';
    double _level_data_rate = 60;

    double calcScore() {
      double score_sum = 0.0;
      for (int i = 0; i < _lecture_list.length; i++) {
        score_sum += _lecture_list[i].score;
      }
      print(score_sum);
      return double.parse(
          (score_sum / _lecture_list.length.toDouble()).toStringAsFixed(2));
    }

    void calcSkill() {
      int s1 = 0;
      int s2 = 0;
      int s3 = 0;
      for (int i = 0; i < _lecture_list.length; i++) {
        String skill = _lecture_list[i].skill[0];
        if (skill == '만')
          s1++;
        else if (skill == '그')
          s2++;
        else if (skill == '별') s3++;
      }
      if (s1 >= s2 && s1 >= s3) {
        _skill_data = '만족해요 😊';
        _skill_data_rate = s1 / (s1 + s2 + s3) * 100;
      } else if (s2 >= s1 && s2 >= s3) {
        _skill_data = '그저 그래요 😑';
        _skill_data_rate = s2 / (s1 + s2 + s3) * 100;
      } else if (s3 >= s1 && s3 >= s2) {
        _skill_data = '별로에요 😞';
        _skill_data_rate = s3 / (s1 + s2 + s3) * 100;
      }
    }

    void calcLevel() {
      int s1 = 0;
      int s2 = 0;
      int s3 = 0;
      for (int i = 0; i < _lecture_list.length; i++) {
        String skill = _lecture_list[i].level[0];
        if (skill == '쉬')
          s1++;
        else if (skill == '별')
          s2++;
        else if (skill == '어') s3++;
        print(skill);
      }
      if (s1 >= s2 && s1 >= s3) {
        _level_data = '쉬워요 😊';
        _level_data_rate = s1 / (s1 + s2 + s3) * 100;
      } else if (s2 >= s1 && s2 >= s3) {
        _level_data = '별로에요 😑';
        _level_data_rate = s2 / (s1 + s2 + s3) * 100;
      } else if (s3 >= s1 && s3 >= s2) {
        _level_data = '어려워요 😞';
        _level_data_rate = s3 / (s1 + s2 + s3) * 100;
      }
    }

    void calcGrade() {
      int s1 = 0;
      int s2 = 0;
      int s3 = 0;
      int s4 = 0;
      int s5 = 0;
      for (int i = 0; i < _lecture_list.length; i++) {
        String skill = _lecture_list[i].grade[0];
        if (skill == '1')
          s1++;
        else if (skill == '2')
          s2++;
        else if (skill == '3')
          s3++;
        else if (skill == '4')
          s4++;
        else
          s5++;
      }
      int ss = s1 + s2 + s3 + s4 + s5;
      if (s1 >= s2 && s1 >= s3 && s1 >= s4 && s1 >= s5) {
        _grade_data = '1학년';
        _grade_data_rate = s1 / ss * 100;
      } else if (s2 >= s1 && s2 >= s3 && s2 >= s4 && s2 >= s5) {
        _grade_data = '2학년';
        _grade_data_rate = s2 / ss * 100;
      } else if (s3 >= s1 && s3 >= s2 && s3 >= s4 && s3 >= s5) {
        _grade_data = '3학년';
        _grade_data_rate = s3 / ss * 100;
      } else if (s4 >= s1 && s4 >= s2 && s4 >= s3 && s4 >= s5) {
        _grade_data = '4학년';
        _grade_data_rate = s4 / ss * 100;
      } else {
        _grade_data = '5학년';
        _grade_data_rate = s5 / ss * 100;
      }
    }

    calcSkill();
    //수강학년 계산
    calcGrade();
    //난이도 계산
    calcLevel();

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
                            lecture_list: _lecture_list2)));
              });
            },
            icon: Icon(
              Icons.search,
              size: 25,
              color: Colors.black54,
            )),
      ]),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: HorizontalSelect(
                          label: "필터",
                          items: const <String>[
                            '2023년도 2학기',
                            '2023년도 1학기',
                            '2022년도 2학기',
                            '2021년도 1학기',
                            '2021년도 2학기'
                          ],
                          //style: TextStyle(fontSize: 3, height: 1),
                          isLabel: false,
                          selectedIndex: _purposeIndex!,
                          onChanged: (idx, value) {},
                        ),
                      ),
                    ),

                    //SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.shade200,
                        ),
                        child: Column(
                          children: List.generate(scores.length, (index) {
                            final score = scores[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text(score['label'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        )),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: LinearProgressIndicator(
                                      value: score['score'] / 5,
                                      backgroundColor: Colors.grey[300],
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.blue),
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Text(score['score'].toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ),

                    // Expanded(
                    //   child: ListView.builder(
                    //     itemCount: scores.length,
                    //     itemBuilder: (context, index) {
                    //       final score = scores[index];
                    //       return Padding(
                    //         padding:
                    //             const EdgeInsets.symmetric(vertical: 8.0),
                    //         child: Row(
                    //           children: [
                    //             Expanded(
                    //               flex: 2,
                    //               child: Text(score['label']),
                    //             ),
                    //             Expanded(
                    //               flex: 3,
                    //               child: LinearProgressIndicator(
                    //                 value: score['score'] / 5.0,
                    //                 backgroundColor: Colors.grey[300],
                    //                 valueColor: AlwaysStoppedAnimation<Color>(
                    //                     Colors.blue),
                    //               ),
                    //             ),
                    //             SizedBox(width: 10),
                    //             Text(score['score'].toString()),
                    //           ],
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
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
                          Text(_lectureName,
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
                          const Text('교수      ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              )),
                          Text(_professorName,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Container(
                        width: double.infinity,
                        height: 10, // 원하는 높이 설정
                        color: Color(0xFFF3F3F3), // BBBBBB 색상 설정
                      ),
                    ),
                    HeaderNoDetail(header_name: '나와 비슷한 사용자가 많이 조회한 강의평'),
                    Container(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                              child: Container(
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(15)),
                                height: 140,
                                child: _recent_evaluate_widget(index),
                              ));
                        },
                        itemCount: _lecture_recommend_list.length,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        width: double.infinity,
                        height: 10, // 원하는 높이 설정
                        color: Color(0xFFF3F3F3), // BBBBBB 색상 설정
                      ),
                    ),
                    //..? 이상하게 짜놓은거 같은데..ㅎㅎㅎ..
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.05, 10, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(5, (index) {
                              return Image.asset(
                                index < calcScore().floor()
                                    ? 'assets/images/gold_star.png'
                                    : 'assets/images/grey_star.png',
                                width: 35,
                                height: 20,
                              );
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            calcScore().toString(), // 현재 선택된 별점을 텍스트로 표시
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' / 5.0', // 현재 선택된 별점을 텍스트로 표시
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    percent_bar('강의력', _skill_data, _skill_data_rate),
                    percent_bar('수강학년', _grade_data, _grade_data_rate),
                    percent_bar('난이도', _level_data, _level_data_rate),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Container(
                        width: double.infinity,
                        height: 10, // 원하는 높이 설정
                        color: Color(0xFFF3F3F3), // BBBBBB 색상 설정
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: 280,
                            child: HorizontalSelect(
                              label: "필터",
                              items: const <String>['강의력', '만족도', '난이도'],
                              //style: TextStyle(fontSize: 3, height: 1),
                              isLabel: false,
                              selectedIndex: _purposeIndex!,
                              onChanged: (idx, value) {},
                            ),
                          ),
                        ),
                        Row(
                          //로직도 구현이 안되어 있네요..ㅎㅎ..
                          children: [
                            GestureDetector(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.filter_list, size: 16),
                                    Text(
                                        _upper_lower_index == 2
                                            ? '내림차순'
                                            : '오름차순',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10))
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    if (_upper_lower_index == 0) {
                                      _upper_lower_index = 1;
                                    } else {
                                      _upper_lower_index =
                                          3 - _upper_lower_index;
                                    }
                                  });
                                  print('오름차순');
                                }),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 400,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white10,
                                    borderRadius: BorderRadius.circular(15)),
                                height: 200,
                                child: class_detail(index),
                              ));
                        },
                        itemCount: _lecture_list.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
        child: SizedBox(
          width: 100,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  child: EvaluateScreenWrite(
                    professorName: _professorName,
                    lectureName: _lectureName,
                    academicNumber: _academicNumber,
                    lectureType: _lectureType,
                    department: _department,
                  ),
                  type: PageTransitionType.fade,
                ),
              );
            },
            child:
                Text('평가 작성하기', style: TextStyle(fontWeight: FontWeight.bold)),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue, // 원하는 색상으로 설정
              foregroundColor: Colors.white, // 텍스트 색상 설정
            ),
          ),
        ),
      ),
    );
  }
//           child: FutureBuilder(future: Future(
//             () async {
//               // _lecture_list =
//               //     await getDataInfouDetails(_academicNumber, _professorName, {
//               //   'page': 0,
//               //   'size': 50,
//               //   'sort': ['score,desc']
//               //}
//               // );
//               // _lecture_recommend_list = await getDataInfouRecommend({
//               //   'page': 0,
//               //   'size': 5,
//               //   'sort': ['count,asc']
//               //});
//               // print("_lecture_recommend_list : ");
//               // print(_lecture_recommend_list);
//               // //await Future.delayed(Duration(seconds: 10));
//               // return 0;
//             },
//           ), builder: (context, snapshot) {
//             if (snapshot.hasData &&
//                 _lecture_list != null &&
//                 _lecture_list != []) {
//               //강의력 계산
//               calcSkill();
//               //수강학년 계산
//               calcGrade();
//               //난이도 계산
//               calcLevel();
//               return Container(
//                 color: Colors.white,
//                 child: Center(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(
//                             MediaQuery.of(context).size.width * 0.1, 0, 10, 5),
//                         child: Row(
//                           children: [
//                             const Text('과목      ',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 18,
//                                 )),
//                             Text(_lectureName,
//                                 style: const TextStyle(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 14,
//                                 )),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(
//                             MediaQuery.of(context).size.width * 0.1, 0, 10, 5),
//                         child: Row(
//                           children: [
//                             const Text('교수     ',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 18,
//                                 )),
//                             Text(_professorName,
//                                 style: const TextStyle(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 14,
//                                 )),
//                           ],
//                         ),
//                       ),
//                       HeaderNoDetail(header_name: '나와 비슷한 사용자가 많이 조회한 강의평'),
//                       Container(
//                         height: 200,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemBuilder: (context, index) {
//                             return Padding(
//                                 padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Colors.grey.shade200,
//                                       borderRadius: BorderRadius.circular(15)),
//                                   height: 140,
//                                   child: _recent_evaluate_widget(index),
//                                 ));
//                           },
//                           itemCount: _lecture_recommend_list.length,
//                         ),
//                       ),
//                       //..? 이상하게 짜놓은거 같은데..ㅎㅎㅎ..
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(
//                             MediaQuery.of(context).size.width * 0.05,
//                             10,
//                             20,
//                             0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: List.generate(5, (index) {
//                                 return Image.asset(
//                                   index < calcScore().floor()
//                                       ? 'assets/images/gold_star.png'
//                                       : 'assets/images/grey_star.png',
//                                   width: 35,
//                                   height: 20,
//                                 );
//                               }),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               calcScore().toString(), // 현재 선택된 별점을 텍스트로 표시
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               ' / 5.0', // 현재 선택된 별점을 텍스트로 표시
//                               style: TextStyle(
//                                   fontSize: 14, fontWeight: FontWeight.normal),
//                             ),
//                           ],
//                         ),
//                       ),
//                       percent_bar('강의력', _skill_data, _skill_data_rate),
//                       percent_bar('수강학년', _grade_data, _grade_data_rate),
//                       percent_bar('난이도', _level_data, _level_data_rate),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(children: [
//                             Text('강의력'),
//                             Text('만족도'),
//                             Text('난이도'),
//                           ]),
//                           Row(
//                             //로직도 구현이 안되어 있네요..ㅎㅎ..
//                             children: [
//                               IconButton(
//                                   onPressed: () => {}, icon: Icon(Icons.list)),
//                               Text('오름차순'),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Container(
//                         height: 200,
//                         child: ListView.builder(
//                           itemBuilder: (context, index) {
//                             return Padding(
//                                 padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Colors.white10,
//                                       borderRadius: BorderRadius.circular(15)),
//                                   height: 140,
//                                   child: class_detail(index),
//                                 ));
//                           },
//                           itemCount: _lecture_list.length,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               PageTransition(
//                                   child: EvaluateScreenWrite(
//                                     professorName: _professorName,
//                                     lectureName: _lectureName,
//                                     academicNumber: _academicNumber,
//                                     lectureType: _lectureType,
//                                     department: _department,
//                                   ),
//                                   type: PageTransitionType.fade));
//                         },
//                         child: Text('평가 작성하기',
//                             style: TextStyle(fontWeight: FontWeight.bold)),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             } else if (snapshot.connectionState == ConnectionState.waiting) {
//               return Container(
//                   color: Colors.white,
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       CircularProgressIndicator(),
//                     ],
//                   ));
//             } else {
//               return Center(child: Text('No data available'));
//             }
//           }),
//         ),
//       ),
//     );
//   }
// }

// void _showReviewSubmittedDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text('알림'),
//         content: Text('강의평이 등록되었습니다.'),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: Text('확인'),
//           ),
//         ],
//       );
//     },
}
