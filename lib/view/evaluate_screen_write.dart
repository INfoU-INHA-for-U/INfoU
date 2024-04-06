import 'package:flutter/material.dart';
import 'package:myapp/component/fetch_data_infou.dart';
import 'package:myapp/widget/header_no_detail.dart';
import 'package:myapp/widget/horizontal_select.dart';

class EvaluateScreenWrite extends StatefulWidget {
  final String lectureName;
  final String professorName;
  final String department;
  final String academicNumber;

  const EvaluateScreenWrite({super.key, required this.lectureName, required this.professorName, required this.department, required this.academicNumber});

  @override
  State<EvaluateScreenWrite> createState() => _EvaluateScreenWriteState();
}

class _EvaluateScreenWriteState extends State<EvaluateScreenWrite> {
  int? _purposeIndex;
  String? _purposeValue;
  int _rating = 0; // 초기 별점
  String? _lectureName;
  String? _professorName;
  String? _lectureType;
  String? _department;
  String? _semester;
  String? _academicNumber;
  String? _grade;
  String? _skill;
  String? _level;
  int? _score;
  String? _review;

  //아 너무..너무하네요 정말.. 나중에 받아오는 작업 하나도 안하고 이렇게 초기 형태로 넘겨버리면 할게 너무 많아집니다..
  //누구는 시간 있어서 api연결까지 생각해서 구조 짜는게 아닌데..ㅎㅎ..
  List _data = ['자료구조', '김영호'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lectureName = widget.lectureName;
    _academicNumber = widget.academicNumber;
    _professorName = widget.professorName;
    _department = widget.department;
  }

  @override
  Widget build(BuildContext context) {
    _purposeIndex = 1;
    _purposeValue = '1';

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1, // 화면 높이의 10%
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_sharp),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
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
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05, 10, 0, 0),
                  child: HorizontalSelect(
                    label: "수강하신 학기를 알려주세요",
                    //??마음대로 넣은 느낌이..
                    items: const <String>[
                      '2023년 2학기',
                      '2023년 1학기',
                      '2022년 2학기',
                      '2022년 1학기',
                      '2021년 2학기',
                      '2021년 1학기',
                      '2020년 2학기',
                      '2020년 1학기',
                      '2019년 2학기',
                      '2019년 1학기',
                      '2018년 2학기',
                      '2018년 1학기',
                      '2017년 2학기',
                      '2017년 1학기',
                      '2016년 2학기',
                      '2016년 1학기',
                    ],
                    isLabel: true,
                    selectedIndex: _purposeIndex!,
                    onChanged: (idx, value) {
                      _purposeIndex = idx;
                      _purposeValue = value;
                      _semester = value;
                      debugPrint('Change to $value');
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05, 10, 0, 0),
                  child: HorizontalSelect(
                    label: "수강 당시 학년이 어떻게 되나요?",
                    items: const <String>['1학년', '2학년', '3학년', '4학년', '기타'],
                    isLabel: true,
                    selectedIndex: _purposeIndex!,
                    onChanged: (idx, value) {
                      _purposeIndex = idx;
                      _purposeValue = value;
                      _grade = (idx+1).toString() + '학년';
                      debugPrint('Change to $value');
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05, 10, 20, 0),
                  child: HorizontalSelect(
                    label: "교수님의 강의력은 어떤 것 같나요?",
                    items: const <String>['만족해요 😀', '보통이에요 😊', '별로에요 😒'],
                    isLabel: true,
                    selectedIndex: _purposeIndex!,
                    onChanged: (idx, value) {
                      _purposeIndex = idx;
                      _purposeValue = value;
                      if(idx == 0) {
                        _level = '만족해요';
                      } else if(idx == 1) {
                        _level = '그저 그래요';
                      } else if(idx == 2) {
                        _level = '별로에요';
                      }
                      debugPrint('Change to $value');
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05, 10, 20, 0),
                  child: HorizontalSelect(
                    label: "강의의 난이도는 어땠나요?",
                    items: const <String>['쉬워요 😀', '보통이에요 😊', '어려워요 😒'],
                    isLabel: true,
                    selectedIndex: _purposeIndex!,
                    onChanged: (idx, value) {
                      _purposeIndex = idx;
                      _purposeValue = value;
                      if(idx == 0) {
                        _level = '쉬워요';
                      } else if(idx == 1) {
                        _level = '어렵진 않아요';
                      } else if(idx == 2) {
                        _level = '어려워요';
                      }
                      debugPrint('Change to $value');
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05, 10, 20, 0),
                  child: HeaderNoDetail(header_name: '총점'),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05, 10, 20, 0),
                  child: Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                // 별을 누를 때마다 현재 탭한 별까지의 별점을 업데이트
                                _rating = index + 1;
                                _score = _rating;
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' / 5.0', // 현재 선택된 별점을 텍스트로 표시
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05,
                      10,
                      20,
                      MediaQuery.of(context).size.width * 0.05),
                  child: TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF4F4F4), // 백그라운드 색상
                      border: OutlineInputBorder(),
                      hintText: '강의에 대한 총평을 작성해 주세요.',
                      hintStyle: TextStyle(color: Color(0xFF808080)),
                    ), // 힌트 텍스트 색상
                    onChanged: (value) => _review = value,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    postDataInfou(_lectureName!, _lectureType!, _department!, _semester!, _professorName!, _academicNumber!, _grade!, _skill!, _level!, _score!, _review!);
                    _showReviewSubmittedDialog(context);
                    Navigator.pop(context);
                  },
                  child:
                      Text('등록하기', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
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
