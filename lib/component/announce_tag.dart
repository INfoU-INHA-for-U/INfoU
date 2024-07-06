import 'package:flutter/material.dart';
import 'package:infou/view/notice_search_screen.dart';

import '../class/lecture.dart';

//1 : 장학 , 2 : 모집 , 3 : 인턴십 , 4 : 신청 , 5 : 대학원
List<String> announce_tag_name = ['🔍 검색', '신청 ✍', '장학 💰', '모집 🤗', '인턴십 💼'];

//아마 나중가면 여길 String으로 이미지 처리 하지 않을까 싶네요.
const List<Widget> announce_tag_icon = [
  Icon(Icons.search, size: 18),
  Icon(Icons.money, size: 18),
  Icon(Icons.smart_display, size: 18),
  Icon(Icons.money, size: 18),
  Icon(Icons.money, size: 18),
  Icon(Icons.money, size: 18)
];

List<Lecture> lecture_list = [
  Lecture(
    lectureName: "컴퓨터 프로그래밍",
    department: "컴퓨터공학과",
    academicNumber: "CS101",
    professors: [Professor(name: "서영덕"), Professor(name: "이근희")],
    options: {"option_1": "4.7", "option_2": "3.8"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "컴퓨터공학 입문 및 실습",
    department: "컴퓨터공학과",
    academicNumber: "CS102",
    professors: [Professor(name: "배근조")],
    options: {"option_1": "4.6", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "운영체제",
    department: "컴퓨터공학과",
    academicNumber: "CS102",
    professors: [Professor(name: "이다영")],
    options: {"option_1": "4.5", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "자료구조",
    department: "컴퓨터공학과",
    academicNumber: "CS102",
    professors: [Professor(name: "김지수")],
    options: {"option_1": "4.2", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "인공지능 1",
    department: "인공지능공학과",
    academicNumber: "CS102",
    professors: [Professor(name: "권장우")],
    options: {"option_1": "4.2", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "인공지능 2",
    department: "컴퓨터공학과",
    academicNumber: "CS102",
    professors: [Professor(name: "권준혁")],
    options: {"option_1": "4.2", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "요가",
    department: "일반교양",
    academicNumber: "CS102",
    professors: [Professor(name: "양수민")],
    options: {"option_1": "4.6", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "문제해결기법",
    department: "컴퓨터공학과",
    academicNumber: "CSE3302",
    professors: [Professor(name: "김영호")],
    options: {"option_1": "4.0", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-2",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "클라우드 컴퓨팅",
    department: "컴퓨터공학과",
    academicNumber: "CSE4406",
    professors: [Professor(name: "권구인")],
    options: {"option_1": "4.0", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "오픈소스응용프로그래밍",
    department: "일반교양",
    academicNumber: "CSE3302",
    professors: [Professor(name: "권구인")],
    options: {"option_1": "4.2", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "문제해결기법",
    department: "컴퓨터공학과",
    academicNumber: "CS102",
    professors: [Professor(name: "심정섭")],
    options: {"option_1": "4.0", "option_2": "3.3"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2022-2",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "자료구조",
    department: "컴퓨터공학과",
    academicNumber: "CS102",
    professors: [Professor(name: "김영호")],
    options: {"option_1": "4.0", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "컴퓨터네트워크",
    department: "일반교양",
    academicNumber: "CS102",
    professors: [Professor(name: "권구인")],
    options: {"option_1": "4.2", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "프로그래밍 기초",
    department: "일반교양",
    academicNumber: "CS102",
    professors: [Professor(name: "김경진")],
    options: {"option_1": "4.2", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "프로그래밍 기초 2",
    department: "일반교양",
    academicNumber: "CS102",
    professors: [Professor(name: "김경진")],
    options: {"option_1": "4.2", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "스타트업의 이해",
    department: "컴퓨터공학과",
    academicNumber: "CS102",
    professors: [Professor(name: "경남진")],
    options: {"option_1": "3.9", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
  Lecture(
    lectureName: "문제해결기법 2",
    department: "컴퓨터공학과",
    academicNumber: "CS102",
    professors: [Professor(name: "심정섭")],
    options: {"option_1": "3.5", "option_2": "3.9"},
    surveyCnt: "25",
    totalCnt: "30",
    semester: "2023-1",
    detailUk: 12345,
  ),
];

Widget announce_tag_widget(BuildContext context, int index) {
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 1, 10, 1),
    child: GestureDetector(
      onTap: () {
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    notice_search_screen(lecture_list: lecture_list)),
          );
        }
      },
      child: Container(
          width: announce_tag_name[index].length == 4 ? 55 : 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xFFBBBBBB)),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 1, 0, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  announce_tag_name[index],
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                //announce_tag_icon[index],
              ],
            ),
          )),
    ),
  );
}
