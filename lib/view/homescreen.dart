import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:infou/view/notice_screen.dart';
import 'package:infou/widget/home_notice_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  //공지사항 위젯
  final Map<String, Map<String, String>> announce_list = {
    '0': {
      'date': '2024.02.28',
      'major': '컴퓨터공학과',
      'title': '[프런티어학부대학] 연구원 채용 공고',
      'category': '채용 👔',
      'link': "http://www.naver.com",
    },
    '1': {
      'date': '2024.02.28',
      'major': '컴퓨터공학과',
      'title': '[프런티어학부대학] 연구원 채용 공고',
      'category': '채용 👔',
      'link': "http://www.naver.com",
    },
    '2': {
      'date': '2024.02.28',
      'major': '컴퓨터공학과',
      'title': '[프런티어학부대학] 연구원 채용 공고',
      'category': '채용 👔',
      'link': "http://www.naver.com",
    },
  };

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
    '2': {
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
      padding: EdgeInsets.fromLTRB(13, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                child: Text(
                    _current_evaluate_data['class'] +
                        ' [' +
                        _current_evaluate_data['professor'] +
                        ']',
                    style: TextStyle(fontSize: 15)),
              ),
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
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                        child: Row(
                          children: [
                            Text(_current_evaluate_data['evaluate1'] + ' ',
                                style: TextStyle(fontSize: 14)),
                            //해당 이미지가 없어서 일단 아이콘으로 대체했습니다.
                            Icon(Icons.thumb_up_alt_outlined, size: 13)
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
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                          child: Row(
                            children: [
                              Text(_current_evaluate_data['evaluate2'] + ' ',
                                  style: TextStyle(fontSize: 14)),
                              //해당 이미지가 없어서 일단 아이콘으로 대체했습니다.
                              Icon(Icons.thumb_down_alt_outlined, size: 13)
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

  var activeBannerIndex = 0;

  List bannerPath = [
    'assets/images/logo.png',
    'assets/samples/ad_sample1.png',
    'assets/samples/ad_sample2.png',
  ];

  Widget bannerSlider(path, index) {
    return Container(
        width: MediaQuery.of(context).size.width, // 화면 전체 너비로 설정
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        child: Image.asset(
          path,
          fit: BoxFit.contain,
        ));
  }

  Widget sliderBannerIndicator() {
    return Container(
      child: AnimatedSmoothIndicator(
        activeIndex: activeBannerIndex,
        count: bannerPath.length,
        effect: SlideEffect(
          activeDotColor: Colors.black,
          dotColor: Colors.grey,
          dotWidth: 6,
          dotHeight: 6,
          radius: 20,
        ),
      ),
    );
  }

  Widget sliderBannerWidget() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
            itemCount: bannerPath.length,
            itemBuilder: (context, index, realIndex) {
              final path = bannerPath[index];
              return bannerSlider(path, index);
            },
            options: CarouselOptions(
              initialPage: 0,
              autoPlayAnimationDuration: const Duration(seconds: 4),
              onPageChanged: (index, reason) {
                setState(() {
                  activeBannerIndex = index;
                });
              },
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: sliderBannerIndicator(),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
                (activeBannerIndex + 1).toString() +
                    '|' +
                    bannerPath.length.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("InfoU"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 180,
                  child: sliderBannerWidget(),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '전체 공지사항',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextButton(onPressed: () {}, child: Text('더 보기 > '))
                          ],
                        ),
                      ),
                      homeNoticeView(noticeData: announce_list),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('최근 강의평',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: () {}, child: Text('더보기 > '))
                        ],
                      ),
                    ),
                    Container(
                      height: 260,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
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
                        itemCount: _recent_evaluate_data.length - 1,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
