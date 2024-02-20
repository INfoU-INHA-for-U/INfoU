import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

import '../component/fetch_data.dart';
import 'evaluate_search_screen.dart';

class rating_screen extends StatefulWidget {
  const rating_screen({super.key});

  @override
  State<rating_screen> createState() => _evalute_screenState();
}

class _evalute_screenState extends State<rating_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //새로운 api 형식에 따라 넣어뒀음. class lecture에 하나하나씩 차곡차곡 쌓이게 작업해뒀고,
    //그중 가장 첫번째 데이터를 정리해서 print로 출력하였으니 참고바람.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await fetchData('데이터베이스', '컴퓨터공학과');
      setState(() {});
    });
  }

  //값에 따라 강의평 홈 / 강의평 검색 / 강의평 추가 화면 을 setState로 구별해야할듯.
  //아래에 있는 bottomNaviagtorBar때문.
  // 강의평 홈 = 0 / 강의평 검색 = 1 / 강의평 추가 화면 = 2
  int search_screen_state_number = 0;

  Map _recent_evaluate_data = {
    '0': {
      'class': '파이썬 프로그래밍',
      'professor': '서영덕',
      'star_rate': 4,
      'evaluate1': '정말 좋아요',
      'evaluate2': '적당해요',
      'recommend_rate': 4.7
    },
    '1': {
      'class': '클라우드 컴퓨팅',
      'professor': '권구인',
      'star_rate': 4,
      'evaluate1': '정말 좋아요',
      'evaluate2': '어려워요',
      'recommend_rate': 4.9
    },
  };

  //최근 강의평 위젯
  Widget _recent_evaluate_widget(int index) {
    Map _current_evaluate_data = _recent_evaluate_data[index.toString()];
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  _current_evaluate_data['class'] +
                      ' [' +
                      _current_evaluate_data['professor'] +
                      ']',
                  style: TextStyle(fontSize: 15)),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Container(
                  width: 200,
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      //별 표시해주는겁니다. api식으로 바로 사용할수있게 코딩해놨습니다.
                      if (index < _current_evaluate_data['star_rate'])
                        return const Icon(Icons.star, color: Colors.amber);
                      else
                        return const Icon(Icons.star, color: Colors.grey);
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                        child: Row(
                          children: [
                            Text(_current_evaluate_data['evaluate1'] + ' ',
                                style: TextStyle(fontSize: 15)),
                            Icon(Icons.thumb_up_alt_outlined, size: 16)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                          child: Row(
                            children: [
                              Text(_current_evaluate_data['evaluate2'] + ' ',
                                  style: TextStyle(fontSize: 15)),
                              Icon(Icons.thumb_down_alt_outlined, size: 16)
                            ],
                          ),
                        )),
                  )
                ],
              )
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('추천도'),
            Text(_current_evaluate_data['recommend_rate'].toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))
          ])
        ],
      ),
    );
  }

  //인기 강의평 위젯 (현재 블러 처리 되어있음)
  Widget _popular_class_evaluate_widget() {
    return Blur(
      // <- 블러 처리
      blur: 4,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 30,
                ),
                Text('  익명의 거북이 [경영학과]', style: TextStyle(fontSize: 17))
              ],
            ),
            Text('과목명  파이썬 프로그래밍', style: TextStyle(fontSize: 17)),
            Row(
              children: [
                Text('교수명  ', style: TextStyle(fontSize: 17)),
                Container(
                    width: 200,
                    height: 25,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        if (index == 0)
                          return Text('홍길동, ', style: TextStyle(fontSize: 17));
                        else
                          return Text('홍길동', style: TextStyle(fontSize: 17));
                      },
                    )),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.height,
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  //별 표시해주는겁니다. api식으로 바로 사용할수있게 코딩해놨습니다.
                  if (index < 4)
                    return Icon(Icons.star, color: Colors.amber, size: 30);
                  else
                    return Icon(Icons.star, color: Colors.grey, size: 30);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Text(
                  '이러한 에러가 생기는 이유는 ListView는 부모 위젯의 높이에 따라 높이를 맞추게 되는데 ListView의 자식 내용이 적더라도 ListView는 자신이 사용할 수 있는 최대 공간을 사용하게 됩니다. Column의 높이는 무한이기 때문에 ListView의 높이도 따라 무한이 됨으로 에러가 생기게 되는 겁니다. '),
            ),
            Row(
              children: [
                //도움됐어요
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                  child: GestureDetector(
                    onTap: () {
                      //눌렀을때 api내 값을 변경해줘야함.
                      //따로 firebase와 같은 서버로 로그인에 따른 값을 처리해야함.
                      debugPrint("sssss");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                            child: Row(
                              children: [
                                Text('도움됐어요 '),
                                Icon(Icons.check),
                                //api처리
                                Text(' 16'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //별로에요
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      //눌럿을때 api와 통신하며 값을 변경해야함.
                      debugPrint("sssss");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                            child: Row(
                              children: [
                                Text('별로예요 '),
                                Icon(Icons.dangerous_outlined),
                                //이부분 api처리
                                Text(' 3'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'InfoU',
              style: TextStyle(color: Colors.blueAccent),
            ),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      search_screen_state_number = 1;
                      //Navigator.pushNamed나 Get.to 사용 안됩니다..
                      Navigator.push(context, MaterialPageRoute(builder: (_) => evaluate_search_screen()));
                    });
                  },
                  icon: Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.black54,
                  )),
            ]),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('최근 강의평',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    TextButton(
                      onPressed: () {},
                      child: Text('더 보기 > ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Container(
                height: 260,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15)),
                          height: 110,
                          child: _recent_evaluate_widget(index),
                        ));
                  },
                  itemCount: _recent_evaluate_data.length,
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 5,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('인기 강의평',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '더 보기 > ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    //여기에 블러 처리 되어있음. 블러 처리 방식도 따로 component형식으로 widget으로 빼놓으면 됨.
                    //현재는 블러 처리된 widget으로 넣어둠.
                    _popular_class_evaluate_widget(),
                    //이용권 구매 여부에 따라 삼항 연산자로 묶으면 됨.
                    const Align(
                      alignment: Alignment.center,
                      child: Text('이용권 구매시 열람이 가능합니다 :D',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
