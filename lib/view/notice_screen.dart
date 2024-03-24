import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/view/alarm_screen.dart';
import 'package:myapp/view/notice_screen_detail.dart';
import 'package:myapp/view/notice_screen_favorite.dart';
import 'package:myapp/view/notice_screen_similar.dart';
import '../component/announce_tag.dart';
import 'notice_screen_page.dart';

class notice_screen extends StatefulWidget {
  const notice_screen({super.key});

  @override
  State<notice_screen> createState() => _notice_screenState();
}

//이것도 지우셔도 돼요. 디자인 바뀌면서 필요없는 위젯이 됐네요 ㅜ
Widget sss() {
  return Container(
    height: 280,
    child: Padding(
        padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2024.01.30',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                  height: 53,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //index에 따라 api에서 가져온 값 넣어주면 됨.
                      Text('[현장실습] 2024-1학기'),
                      Container(
                          height: 23,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return announce_tag_widget(index);
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 4, height: 25);
                            },
                          ))
                    ],
                  ),
                );
              },
            )),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ],
        )),
  );
}

class _notice_screenState extends State<notice_screen> {
  List<String> announce_topic_name = ['인하대학교', 'SW중심대학', '컴퓨터공학'];
  int min_list_num = 1;
  int current_list_num = 0;
  int notice_screen_topic_num = 0;
  TextEditingController? _controller = TextEditingController(text: '');

  final Map<String, Map<String, String>> _noticeData = {
    '0': {
      'title': '[현장실습] 2024-1학기 (주)세정 표준 현장실습학기제 참여 학생 모집(의상디자인, 상품MD)',
      'category': '인턴십 💼',
      'link': "http://www.naver.com",
    },
    '1': {
      'title': '[현장실습] 2024-1학기 (주)세정 표준 현장실습학기제 참여 학생 모집(의상디자인, 상품MD)',
      'category': '인턴십 💼',
      'link': "http://www.naver.com",
    },
    '2': {
      'title': '[현장실습] 2024-1학기 (주)세정 표준 현장실습학기제 참여 학생 모집(의상디자인, 상품MD)',
      'category': '인턴십 💼',
      'link': "http://www.naver.com",
    },
  };

  final Map<String, Map<String, String>> _SimilarNoticeData = {
    '0': {
      'title': '[현장실습] 2024-1학기 (주)세정 표준 현장실습학기제 참여 학생 모집(의상디자인, 상품MD)',
      'category': '인턴십 💼',
      'link': "http://www.naver.com",
    },
    '1': {
      'title': '[현장실습] 2024-1학기 (주)세정 표준 현장실습학기제 참여 학생 모집(의상디자인, 상품MD)',
      'category': '인턴십 💼',
      'link': "http://www.naver.com",
    },
    '2': {
      'title': '[현장실습] 2024-1학기 (주)세정 표준 현장실습학기제 참여 학생 모집(의상디자인, 상품MD)',
      'category': '인턴십 💼',
      'link': "http://www.naver.com",
    },
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFFFFF), // 전체 배경 색상 설정
            appBarTheme: AppBarTheme(
              backgroundColor: Color(0xFFFFFF), // AppBar 배경 색상 설정
            )),
        home: Scaffold(
            appBar: AppBar(
              title: Text("공지사항"),
            ),
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  color: Color(0xFFFFFF),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Positioned(
                        left: 15.99,
                        top: 99,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NoticeScreenDetail()),
                            );
                            print('공지사항 조회 기능 실행');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 6,
                              right: 14,
                              bottom: 10,
                            ),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                    color: Color(0xFFBBBBBB),
                                    width: 1), // 여기서 변경
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '🔔 모든 공지사항 조회 ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      // 즐겨찾기 항목
                      noticeView(
                          title: " 📔 즐겨찾기",
                          noticeData: _noticeData,
                          page: 'notice'), // 공지사항
                      noticeView(
                          title: " 📔 비슷한 사용자가 본 공지사항",
                          noticeData: _SimilarNoticeData,
                          page: 'similar'), // 공지사항

                      //토픽
                      //지우셔도 됩니다.
                      // Stack(children: [
                      //   Container(
                      //     height: 30,
                      //     child: Center(
                      //       child: ListView.separated(
                      //         shrinkWrap: true,
                      //         separatorBuilder: (context, index) {
                      //           return Text(
                      //             '|',
                      //             style: TextStyle(fontSize: 14),
                      //           );
                      //         },
                      //         itemCount: announce_topic_name.length,
                      //         scrollDirection: Axis.horizontal,
                      //         itemBuilder: (context, index) {
                      //           return GestureDetector(
                      //             onTap: () {
                      //               setState(() {
                      //                 notice_screen_topic_num = index;
                      //               });
                      //               print(index);
                      //             },
                      //             child: Padding(
                      //               padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      //               child: Text(
                      //                 announce_topic_name[index],
                      //                 style: TextStyle(
                      //                     fontSize: 14,
                      //                     fontWeight:
                      //                         (index == notice_screen_topic_num)
                      //                             ? FontWeight.bold
                      //                             : FontWeight.normal),
                      //               ),
                      //             ),
                      //           );
                      //         },
                      //       ),
                      //     ),
                      //   ),
                      //   Align(
                      //     alignment: Alignment.centerRight,
                      //     child: Padding(
                      //       padding: const EdgeInsets.fromLTRB(0, 2.5, 10, 0),
                      //       child: GestureDetector(
                      //           child: Text('추가하기',
                      //               style: TextStyle(
                      //                   color: Colors.black38,
                      //                   fontWeight: FontWeight.bold,
                      //                   fontSize: 11)),
                      //           onTap: () {}),
                      //     ),
                      //   )
                      // ]),
                      // //검색창
                      // Container(
                      //     padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      //     decoration: BoxDecoration(
                      //       color: Colors.grey.shade200,
                      //       borderRadius: BorderRadius.circular(20),
                      //     ),
                      //     width: MediaQuery.of(context).size.width * 0.87,
                      //     height: 35,
                      //     margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                      //     child: Row(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         Icon(Icons.search, size: 19),
                      //         Expanded(
                      //           child: Padding(
                      //             padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      //             child: TextField(
                      //               controller: _controller,
                      //               style: TextStyle(
                      //                   fontSize: 15,
                      //                   fontWeight: FontWeight.bold),
                      //               decoration: InputDecoration(
                      //                   hintText: '검색어를 입력해주세요',
                      //                   border: InputBorder.none,
                      //                   hintStyle:
                      //                       TextStyle(color: Colors.black12)),
                      //             ),
                      //           ),
                      //         ),
                      //         GestureDetector(
                      //             onTap: () {
                      //               setState(() {
                      //                 print(1);
                      //                 _controller?.text = '';
                      //                 //포커스 해제
                      //                 FocusManager.instance.primaryFocus
                      //                     ?.unfocus();
                      //               });
                      //             },
                      //             child: Icon(Icons.cancel_outlined, size: 17)),
                      //       ],
                      //     )),
                      // Container(
                      //   height: 37,
                      //   width: 400,
                      //   child: Padding(
                      //     padding: EdgeInsets.fromLTRB(23, 8, 0, 4),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         //index에 따라 api에서 가져온 값 넣어주면 됨.
                      //         Expanded(
                      //           child: ListView.builder(
                      //             scrollDirection: Axis.horizontal,
                      //             itemCount: 5,
                      //             itemBuilder: (context, index) {
                      //               return announce_tag_widget(index);
                      //             },
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      //   child: Divider(thickness: 1, color: Colors.grey),
                      // ),

                      // //각각 widget 형성된걸로 넣어줌. 하나의 예시일뿐 api에 따라 listview처리 해줘야함.
                      // //Container의 height, width, Expanded의 처리가 까다로움 주의.
                      // sss(),
                      // sss(),
                      // //아래 빠르게 바로가기 코드입니다. 화살표에 따라 값 변경, 값 선택에 따른 내부 값 처리까지 다 해놨습니다.
                      // Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {
                      //           setState(() {
                      //             (min_list_num != 1)
                      //                 ? min_list_num--
                      //                 : min_list_num;
                      //           });
                      //         },
                      //         child: Text(
                      //           '< ',
                      //           style: TextStyle(
                      //             fontSize: 20,
                      //           ),
                      //         ),
                      //       ),
                      //       Container(
                      //         height: 35,
                      //         width: 300,
                      //         child: ListView.builder(
                      //           scrollDirection: Axis.horizontal,
                      //           itemCount: 9,
                      //           itemBuilder: (context, index) {
                      //             return Card(
                      //               color: Colors.white,
                      //               shadowColor: Colors.white,
                      //               child: Container(
                      //                 color: Colors.white,
                      //                 width: (MediaQuery.of(context).size.width -
                      //                         30.4) *
                      //                     0.069,
                      //                 child: GestureDetector(
                      //                   onTap: () {
                      //                     setState(() {
                      //                       current_list_num =
                      //                           index + min_list_num - 1;
                      //                     });
                      //                     print(index);
                      //                   },
                      //                   child: Text(
                      //                     (min_list_num + index).toString(),
                      //                     style: TextStyle(
                      //                       fontSize: 20,
                      //                       fontWeight: current_list_num ==
                      //                               (min_list_num + index - 1)
                      //                           ? FontWeight.bold
                      //                           : FontWeight.normal,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //             );
                      //           },
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {
                      //           setState(() {
                      //             min_list_num++;
                      //           });
                      //         },
                      //         child: Text(' >',
                      //             style: TextStyle(
                      //               fontSize: 20,
                      //             )),
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

class noticeView extends StatelessWidget {
  final Map<String, Map<String, String>> noticeData;
  final String title;
  final String page;

  const noticeView({
    Key? key,
    required this.noticeData,
    required this.title,
    required this.page,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.only(top: 15, right: 0.99),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Color(0xFFBBBBBB), width: 1), // 여기서 변경
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '더 보기',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        if (page == 'notice') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NoticeScreenFavorite()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NoticeScreenSimilar()),
                          );
                        }
                      },
                      icon: Icon(Icons.arrow_right)),
                ],
              ),
            ],
          ),
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: noticeData.length,
              itemBuilder: (context, index) {
                final notice = noticeData[index.toString()];
                if (notice != null) {
                  return ListTile(
                    title: Text(notice['title'] ?? ''),
                    subtitle: Text(notice['category'] ?? ''),
                    onTap: () {
                      print('Clicked on ${notice['title']}');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => notice_screen_page()));
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => WebViewScreen(url: notice['link'] ?? ''),
                      //   ),
                      // );
                    },
                  );
                } else {
                  return SizedBox(); // 에러를 피하기 위해 빈 위젯을 반환합니다.
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
