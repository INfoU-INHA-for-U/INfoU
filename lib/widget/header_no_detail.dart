import 'package:flutter/material.dart';

class HeaderNoDetail extends StatelessWidget {
  final String header_name; // 추가: 최근 강의평을 저장할 필드

  const HeaderNoDetail({
    super.key,
    required this.header_name, // 수정: 생성자에서 최근 강의평을 받음
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(header_name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              )),
        ],
      ),
    );
  }
}
