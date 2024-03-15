import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  //공지사항 위젯
  List<Widget> announce_list = [
    Text('공지사항 1번'),
    Text('공지사항 2번'),
    Text('공지사항 3번'),
    Text('공지사항 4번'),
    Text('공지사항 5번'),
  ];

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
        body: Container(
      child: Column(
        children: [
          Container(
            height: 180,
            child: sliderBannerWidget(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '오늘의 공지사항',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextButton(onPressed: () {}, child: Text('더 보기 > '))
                    ],
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: announce_list.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.all(5),
                              child: announce_list[index]);
                        })),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Expanded(
            child: Column(
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
                Expanded(
                    child: ListView.builder(
                  itemCount: announce_list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(5),
                        child: announce_list[index]);
                  },
                ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
