import 'package:flutter/material.dart';
import 'package:infou/view/notice_screen_detail.dart';

import '../component/announce_tag.dart';

class NoticeScreenFavorite extends StatefulWidget {
  const NoticeScreenFavorite({super.key});

  @override
  State<NoticeScreenFavorite> createState() => _NoticeScreenFavoriteState();
}

class _NoticeScreenFavoriteState extends State<NoticeScreenFavorite> {
  List<String> announce_topic_name = ['인하대학교', 'SW중심대학', '컴퓨터공학'];
  int min_list_num = 1;
  int current_list_num = 0;
  int notice_screen_topic_num = 0;
  TextEditingController? _controller = TextEditingController(text: '');
  bool _isExpanded = false;

  final Map<String, Map<String, String>> _SimilarNoticeData = {
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
  };

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
          '저장한 공지사항',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        titleSpacing: -7,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // 날짜별 공지사항
            Container(
              height: 37,
              width: 400,
              child: Padding(
                padding: EdgeInsets.fromLTRB(23, 8, 0, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //index에 따라 api에서 가져온 값 넣어주면 됨.
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return announce_tag_widget(context, index);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            //   child: Divider(thickness: 1, color: Colors.grey),
            // ),
            favoriteNoticeView(
              noticeData: _SimilarNoticeData,
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
          //                     builder: (context) => NoticeScreenFavorite()),
          //               );
          //             },
          //             icon: Icon(Icons.arrow_right)),
          //       ],
          //     ),
          //   ],
          // ),
          Container(
            height: 600,
            color: Colors.white,
            child: ListView.builder(
              itemCount: dateNoticeData.length,
              itemBuilder: (context, index) {
                final dateKey = dateNoticeData.keys.elementAt(index);
                final noticeList = dateNoticeData[dateKey] ?? {}; // null 체크 추가
                return Card(
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
                            final noticeKey = noticeList.keys.elementAt(index);
                            final noticeData = noticeList[noticeKey];
                            return ListTile(
                              tileColor: Colors.white,
                              title: Text(noticeData?['title'] ?? ''),
                              subtitle: Text(noticeData?['category'] ?? ''),
                              onTap: () {
                                // Handle tap event
                              },
                            );
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
    );
  }
}

class favoriteNoticeView extends StatelessWidget {
  final Map<String, Map<String, String>> noticeData;

  const favoriteNoticeView({
    Key? key,
    required this.noticeData,
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
        ),
      ),
      child: Column(
        children: [
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
