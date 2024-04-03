import 'package:flutter/material.dart';

import '../model/notice_response.dart';

class homeNoticeView extends StatelessWidget {
  //final Map<String, Map<String, String>> noticeData;
  final Future<NoticeResponse?> noticeData;
  const homeNoticeView({
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
      child: FutureBuilder<NoticeResponse?>(
          future: noticeData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final noticeResponse = snapshot.data!;
              return Column(
                children: [
                  Container(
                    height: 240,
                    child: ListView.builder(
                      itemCount: noticeResponse
                          .result.noticeDocumentList.content.length,
                      itemBuilder: (context, index) {
                        final notice = noticeResponse
                            .result.noticeDocumentList.content[index];
                        return ListTile(
                          title: Text(notice.title,
                              overflow: TextOverflow.ellipsis),
                          subtitle: Text(notice.tags),
                          onTap: () {
                            print('Clicked on ${notice.title}');

                            // 여기다가 링크로 들어가는 코드랑, 어떤 링크를 눌렀는지 보내는 post log 작성하면 됩니다.

                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => WebViewScreen(url: notice.href),
                            //     ),
                            //   );
                          },
                        );
                      },
                    ),
                  ),
                ],
              );
            } else {
              return SizedBox(); // 에러를 피하기 위해 빈 위젯을 반환합니다.
            }
          }),
    );
  }
}
