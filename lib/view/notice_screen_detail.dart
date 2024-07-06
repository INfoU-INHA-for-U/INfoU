import 'package:flutter/material.dart';
import 'package:infou/view/notice_url_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../component/announce_tag.dart';

class NoticeScreenDetail extends StatefulWidget {
  const NoticeScreenDetail({super.key});

  @override
  State<NoticeScreenDetail> createState() => _NoticeScreenDetailState();
}

class _NoticeScreenDetailState extends State<NoticeScreenDetail> {
  List<String> announce_topic_name = ['인하대학교', 'SW중심대학', '컴퓨터공학'];
  int min_list_num = 1;
  int current_list_num = 0;
  int notice_screen_topic_num = 0;
  TextEditingController? _controller = TextEditingController(text: '');
  bool _isExpanded = false;

  final Map<String, Map<String, Map<String, String>>> _DateNoticeData = {
    '2024.06.15': {
      '0': {
        'title': '[프런티어학부대학] 연구원 채용 공고',
        'category': '인턴십 💼',
        'link': "http://www.naver.com"
      },
      '1': {
        'title': "[현장실습] 2024-1학기 '오스템임플란트(주)' 직무체험형 표준 현장실습학기제 참여 학생 모집",
        'category': '인턴십 💼',
        'link': "http://www.naver.com",
      },
      '2': {
        'title': "[학부-교외장학] 2024학년도 동암장학회 장학생 선발 안내 (경주 출신)",
        'category': '장학 💰',
        'link': "http://www.naver.com",
      },
    },
    '2024.06.14': {
      '0': {
        'title':
            "[미래자동차 사업단] 2024학년도 하계방학 표준 현장실습학기제(Co-op) '(주)이지트로닉스' 참여학생 모집 안내",
        'category': '인턴십 💼',
        'link': "http://www.naver.com"
      },
      '1': {
        'title': '[인하대학교 개교 70주년 기념 “하와이-인하공원” 조형물 건립 기공식 안내]',
        'category': '신청 ✍',
        'link': "http://www.naver.com",
      },
      '2': {
        'title': '2024 인천 블록체인 칼리지 "재직자과정(신규)" 교육생 모집',
        'category': '모집 🤗',
        'link': "http://www.naver.com",
      },
      '3': {
        'title': "2024 인천 블록체인 칼리지 '기초과정' 교육생 모집",
        'category': '모집 🤗',
        'link': "http://www.naver.com",
      },
    },
    '2024.06.13': {
      '0': {
        'title': "2024 「INHA SW NET-Zero 공동해커톤」참여자 모집 (~6.19.)",
        'category': '모집 🤗',
        'link': "http://www.naver.com"
      },
      '1': {
        'title': '인하대학교 디지털 역사관 웹페이지 안내',
        'category': '신청 ✍',
        'link': "http://www.naver.com",
      },
      '2': {
        'title': '[현장실습지원센터] 2024-하계방학 및 2학기 "한국철도기술연구원" 현장실습생 모집(마감임박)',
        'category': '인턴십 💼',
        'link': "http://www.naver.com",
      },
    }
  };

//  '신청 ✍', '장학 💰', '모집 🤗', '인턴십 💼'];

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
          '즐겨찾는 공지사항',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        titleSpacing: -7,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 30,
                child: Center(
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Text(
                        '|',
                        style: TextStyle(fontSize: 14),
                      );
                    },
                    itemCount: announce_topic_name.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            notice_screen_topic_num = index;
                          });
                          print(index);
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Text(
                            announce_topic_name[index],
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: (index == notice_screen_topic_num)
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Padding(
              //     padding: const EdgeInsets.fromLTRB(0, 2.5, 10, 0),
              //     child: GestureDetector(
              //         child: Text('추가하기',
              //             style: TextStyle(
              //                 color: Colors.black38,
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 11)),
              //         onTap: () {}),
              //   ),
              // )
            ]),

            //검색창
            // Container(
            //   padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            //   decoration: BoxDecoration(
            //     color: Colors.grey.shade200,
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   width: MediaQuery.of(context).size.width * 0.87,
            //   height: 35,
            //   margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         GestureDetector(
            //           onTap: () {
            //             setState(() {
            //               _isExpanded = !_isExpanded;
            //               if (_isExpanded) {
            //                 // 확장되면서 포커스 설정
            //                 FocusScope.of(context).requestFocus(FocusNode());
            //               }
            //             });
            //           },
            //           child: Icon(Icons.search, size: 19),
            //         ),
            //         if (_isExpanded)
            //           Expanded(
            //             child: Padding(
            //               padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            //               child: AnimatedContainer(
            //                 duration: Duration(milliseconds: 300),
            //                 width: _isExpanded ? null : 0,
            //                 curve: Curves.easeInOut,
            //                 child: TextField(
            //                   controller: _controller,
            //                   style: TextStyle(
            //                       fontSize: 15, fontWeight: FontWeight.bold),
            //                   decoration: InputDecoration(
            //                     hintText: '검색어를 입력해주세요',
            //                     border: InputBorder.none,
            //                     hintStyle: TextStyle(color: Colors.black12),
            //                   ),
            //                   autofocus: true,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         if (_isExpanded)
            //           GestureDetector(
            //             onTap: () {
            //               setState(() {
            //                 _controller?.text = '';
            //                 _isExpanded = false;
            //                 //포커스 해제
            //                 FocusManager.instance.primaryFocus?.unfocus();
            //               });
            //             },
            //             child: Icon(Icons.cancel_outlined, size: 17),
            //           ),
            //       ],
            //     ),
            //   ),
            //   // child: Row(
            //   //   crossAxisAlignment: CrossAxisAlignment.center,
            //   //   children: [
            //   //     Icon(Icons.search, size: 19),
            //   //     Expanded(
            //   //       child: Padding(
            //   //         padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            //   //         child: TextField(
            //   //           controller: _controller,
            //   //           style:
            //   //               TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            //   //           decoration: InputDecoration(
            //   //               hintText: '검색어를 입력해주세요',
            //   //               border: InputBorder.none,
            //   //               hintStyle: TextStyle(color: Colors.black12)),
            //   //         ),
            //   //       ),
            //   //     ),

            //   //     GestureDetector(
            //   //         onTap: () {
            //   //           setState(() {
            //   //             print(1);
            //   //             _controller?.text = '';
            //   //             //포커스 해제
            //   //             FocusManager.instance.primaryFocus?.unfocus();
            //   //           });
            //   //         },
            //   //         child: Icon(Icons.cancel_outlined, size: 17)),
            //   //   ],
            //   // ),
            // ),

            // 날짜별 공지사항
            SingleChildScrollView(
              child: Container(
                height: 40,
                width: 400,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 4),
                  child: //index에 따라 api에서 가져온 값 넣어주면 됨.
                      ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return announce_tag_widget(context, index);
                    },
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            //   child: Divider(thickness: 1, color: Colors.grey),
            // ),
            DatenoticeView(
              dateNoticeData: _DateNoticeData,
            )
          ],
        ),
      ),
    );
  }
}

class DatenoticeView extends StatelessWidget {
  final Map<String, Map<String, Map<String, String>>> dateNoticeData;

  const DatenoticeView({
    Key? key,
    required this.dateNoticeData,
  }) : super(key: key);

  void _launchURL(String? urlString) async {
    if (urlString != null) {
      final Uri url = Uri.parse(urlString);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $urlString';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //margin: EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.only(top: 15, right: 0.99),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: [
            //         Text(
            //           title,
            //           style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 14,
            //             fontFamily: 'Inter',
            //             fontWeight: FontWeight.w700,
            //             height: 0,
            //           ),
            //         ),
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         Text(
            //           '더 보기',
            //           style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 12,
            //             fontFamily: 'Inter',
            //             fontWeight: FontWeight.w400,
            //             height: 0,
            //           ),
            //         ),
            //         IconButton(
            //             onPressed: () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) => NoticeScreenDetail()),
            //               );
            //             },
            //             icon: Icon(Icons.arrow_right)),
            //       ],
            //     ),
            //   ],
            // ),
            Container(
              height: 680,
              color: Colors.white,
              child: ListView.builder(
                itemCount: dateNoticeData.length,
                itemBuilder: (context, index) {
                  final dateKey = dateNoticeData.keys.elementAt(index);
                  final noticeList =
                      dateNoticeData[dateKey] ?? {}; // null 체크 추가
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Color(0xFFBBBBBB),
                          width: 1), // 여기서 테두리 색상 및 두께를 변경하세요
                    ),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              dateKey,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: noticeList?.length ?? 0, // null 체크 추가
                            itemBuilder: (context, index) {
                              final noticeKey =
                                  noticeList.keys.elementAt(index);
                              final noticeData = noticeList[noticeKey];
                              return ListTile(
                                  tileColor: Colors.white,
                                  title: Text(noticeData?['title'] ?? ''),
                                  subtitle: Text(noticeData?['category'] ?? ''),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NoticeUrlScreen()),
                                    );
                                  });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
            // Container(
            //   height: 300,
            //   child: ListView.builder(
            //     itemCount: noticeData.length,
            //     itemBuilder: (context, index) {
            //       final notice = noticeData[index.toString()];
            //       if (notice != null) {
            //         return ListTile(
            //           title: Text(notice['title'] ?? ''),
            //           subtitle: Text(notice['category'] ?? ''),
            //           onTap: () {
            //             print('Clicked on ${notice['title']}');
            //             // Navigator.push(
            //             //   context,
            //             //   MaterialPageRoute(
            //             //     builder: (context) => WebViewScreen(url: notice['link'] ?? ''),
            //             //   ),
            //             // );
            //           },
            //         );
            //       } else {
            //         return SizedBox(); // 에러를 피하기 위해 빈 위젯을 반환합니다.
            //       }
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
