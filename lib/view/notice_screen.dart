import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/announce_tag.dart';

class announce_screen extends StatefulWidget {
  const announce_screen({super.key});

  @override
  State<announce_screen> createState() => _announce_screenState();
}

Widget sss() {
  return Container(
    height: 300,
    child: Padding(
        padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2024.01.30', style:
            TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),),
            Expanded(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                      height: 53,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //index에 따라 api에서 가져온 값 넣어주면 됨.
                          Text('[현장실습] 2024-1학기'),
                          Container(
                              height: 25,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return announce_tag_widget(index);
                                },
                              )
                          )
                        ],
                      ),
                    );
                  },
                )
            ),
            Divider(thickness: 2,color: Colors.grey,),
          ],
        )
    ),
  );
}

class _announce_screenState extends State<announce_screen> {

  List<String> announce_topic_name = ['인하대학교','SW중심대학','컴퓨터공학'];
  int min_list_num = 1;
  int current_list_num = 0;
  int announce_screen_topic_num = 0;
  TextEditingController? _controller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
              title: const Text('InfoU', style: TextStyle(color: Colors.blueAccent),)
          ),
          resizeToAvoidBottomInset: false,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                //토픽
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
                                announce_screen_topic_num = index;
                              });
                              print(index);
                            },
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Text(
                                announce_topic_name[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: (index == announce_screen_topic_num)
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
                          child: Text('추가하기', style: TextStyle(color: Colors.black38, fontWeight:FontWeight.bold, fontSize: 11)),
                          onTap: (){}
                      ),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.search, size: 17),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: TextField(
                              controller: _controller,
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  hintText: '검색어를 입력해주세요',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black12)
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                print(1);
                                _controller?.text = '';
                                //포커스 해제
                                FocusManager.instance.primaryFocus?.unfocus();
                              });
                            },
                            child: Icon(Icons.cancel_outlined, size: 17)
                        ),
                      ],
                    )
                ),
                //각각 widget 형성된걸로 넣어줌. 하나의 예시일뿐 api에 따라 listview처리 해줘야함.
                //Container의 height, width, Expanded의 처리가 까다로움 주의.
                sss(),
                sss(),
                //아래 빠르게 바로가기 코드입니다. 화살표에 따라 값 변경, 값 선택에 따른 내부 값 처리까지 다 해놨습니다.
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            (min_list_num != 1) ? min_list_num-- : min_list_num;
                          });
                        },
                        child: Text('< ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 300,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 9,
                          itemBuilder: (context, index) {
                            return Card(
                              color: Colors.white,
                              shadowColor: Colors.white,
                              child: Container(
                                color: Colors.white,
                                width: (MediaQuery.of(context).size.width-30.4)*0.069,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current_list_num = index + min_list_num - 1;
                                    });
                                    print(index);
                                  },
                                  child: Text((min_list_num+index).toString(),
                                    style: TextStyle(
                                      fontSize:20,
                                      fontWeight: current_list_num == (min_list_num + index - 1) ? FontWeight.bold : FontWeight.normal,
                                    ),),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            min_list_num++;
                          });
                        },
                        child: Text(' >',
                            style: TextStyle(
                              fontSize: 20,
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
