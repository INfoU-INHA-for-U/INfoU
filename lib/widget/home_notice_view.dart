import 'package:flutter/material.dart';

class homeNoticeView extends StatelessWidget {
  final Map<String, Map<String, String>> noticeData;

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
      child: Column(
        children: [
          Container(
            height: 280,
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
