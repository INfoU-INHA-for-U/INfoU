import 'package:flutter/material.dart';

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
    '2024.01.28': {
      '0': {
        'title': '[현장실습] 2024-1학기 (주)세정 표준 현장실습학기제 참여 학생 모집(의상디자인, 상품MD)',
        'category': '인턴십 💼',
        'link': "http://www.naver.com"
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
    },
    '2024.01.29': {
      '0': {
        'title': '[현장실습] 2024-1학기 (주)세정 표준 현장실습학기제 참여 학생 모집(의상디자인, 상품MD)',
        'category': '인턴십 💼',
        'link': "http://www.naver.com"
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
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 2.5, 10, 0),
                child: GestureDetector(
                    child: Text('추가하기',
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontSize: 11)),
                    onTap: () {}),
              ),
            )
          ]),

          //검색창
          Container(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            width: MediaQuery.of(context).size.width * 0.87,
            height: 35,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                        if (_isExpanded) {
                          // 확장되면서 포커스 설정
                          FocusScope.of(context).requestFocus(FocusNode());
                        }
                      });
                    },
                    child: Icon(Icons.search, size: 19),
                  ),
                  if (_isExpanded)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: _isExpanded ? null : 0,
                          curve: Curves.easeInOut,
                          child: TextField(
                            controller: _controller,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              hintText: '검색어를 입력해주세요',
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black12),
                            ),
                            autofocus: true,
                          ),
                        ),
                      ),
                    ),
                  if (_isExpanded)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _controller?.text = '';
                          _isExpanded = false;
                          //포커스 해제
                          FocusManager.instance.primaryFocus?.unfocus();
                        });
                      },
                      child: Icon(Icons.cancel_outlined, size: 17),
                    ),
                ],
              ),
            ),
            // child: Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Icon(Icons.search, size: 19),
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            //         child: TextField(
            //           controller: _controller,
            //           style:
            //               TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            //           decoration: InputDecoration(
            //               hintText: '검색어를 입력해주세요',
            //               border: InputBorder.none,
            //               hintStyle: TextStyle(color: Colors.black12)),
            //         ),
            //       ),
            //     ),

            //     GestureDetector(
            //         onTap: () {
            //           setState(() {
            //             print(1);
            //             _controller?.text = '';
            //             //포커스 해제
            //             FocusManager.instance.primaryFocus?.unfocus();
            //           });
            //         },
            //         child: Icon(Icons.cancel_outlined, size: 17)),
            //   ],
            // ),
          ),

          // 날짜별 공지사항
          Container(
            height: 37,
            width: 400,
            child: Padding(
              padding: EdgeInsets.fromLTRB(23, 8, 0, 4),
              child: //index에 따라 api에서 가져온 값 넣어주면 됨.
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return announce_tag_widget(index);
                      },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Divider(thickness: 1, color: Colors.grey),
          ),
          DatenoticeView(
            dateNoticeData: _DateNoticeData,
          )
        ],
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
