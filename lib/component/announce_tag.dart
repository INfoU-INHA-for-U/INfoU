import 'package:flutter/material.dart';

//1 : 장학 , 2 : 모집 , 3 : 인턴십 , 4 : 신청 , 5 : 대학원
List<String> announce_tag_name = ['장학','모집','인턴십','신청','대학원'];

//아마 나중가면 여길 String으로 이미지 처리 하지 않을까 싶네요.
const List<Widget> announce_tag_icon = [
  Icon(Icons.money, size: 18),
  Icon(Icons.smart_display, size: 18),
  Icon(Icons.money),
  Icon(Icons.money),
  Icon(Icons.money)
];

Widget announce_tag_widget(int index) {
  return Padding(
    padding: EdgeInsets.all(1),
    child: Container(
        margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //값도
          color: Colors.black12,
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(announce_tag_name[index] + ' ', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
              announce_tag_icon[index],
            ],
          ),
        )
    ),
  );
}