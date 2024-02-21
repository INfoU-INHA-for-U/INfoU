import 'package:flutter/material.dart';
import 'package:myapp/class/lecture.dart';
import 'evaluate_menu_search_screen.dart';

class evaluate_search_screen extends StatefulWidget {

  final List<Lecture> lecture_list;

  const evaluate_search_screen({super.key, required this.lecture_list});

  @override
  State<evaluate_search_screen> createState() => _evaluate_search_screenState();
}

class _evaluate_search_screenState extends State<evaluate_search_screen> {

  TextEditingController? _controller = TextEditingController(text: '');

  late List<Lecture> _lecture_list;

  List<String> _search_menu = ['교수 검색','강의명 검색','학과 검색'];
  //0 : 교수 검색, 1 : 강의명 검색, 2 : 학과 검색, 3 : 아무 화면 없음, 4 : 단어 검색
  //submitted는 검색 후 엔터 친 후, not_submitted는 교수/강의명/학과만 선택 후 검색 엔터 안친 상태.
  int _search_menu_index_not_submitted = 0;
  //초반 아무 것도 보여지면 안되기에, submitted된 search_menu_index는 3으로 초기화 해야함.
  int _search_menu_index_submitted = 3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds:500));
    _lecture_list = widget.lecture_list;
  }

  //evaluate_professor_search_screen.dart에 있는 함수와 다른 함수이다.
  List<String> lecture_professor_word_list_check(List<Lecture> lecture_list, String input_name) {
    List<String> _return_lecture_list = [];
    for(int i=0;i<lecture_list.length;i++) {
      for(int j=0;j<lecture_list[i].professors.length;j++)
      {
        String professor_name = lecture_list[i].professors[j].name;
        //중복 처리 및, 해당 단어가 교수님 이름에 포함하는지 확인
        if(professor_name.contains(input_name) && !_return_lecture_list.contains(professor_name)) {
          _return_lecture_list.add(professor_name);
        }
      }
    }
    return _return_lecture_list;
  }

  //evaluate_class_search_screen.dart에 있는 함수와 다른 함수이다.
  List<String> lecture_class_word_list_check(List<Lecture> lecture_list, String input_name) {
    List<String> _return_lecture_list = [];
    for(int i=0;i<lecture_list.length;i++)
    {
      String class_name = lecture_list[i].lectureName;
      //중복 처리 및, 해당 단어가 강의명에 포함하는지 확인
      if(class_name.contains(input_name) && !_return_lecture_list.contains(class_name)){
        _return_lecture_list.add(class_name);
      }
    }
    return _return_lecture_list;
  }

  //evaluate_major_search_screen.dart에 있는 함수와 다른 함수이다.
  List<String> lecture_major_word_list_check(List<Lecture> lecture_list, String input_name) {
    List<String> _return_lecture_list = [];
    for(int i=0;i<lecture_list.length;i++)
    {
      String major_name = lecture_list[i].department;
      //중복 처리 및, 해당 단어가 학과명에 포함하는지 확인
      if(major_name.contains(input_name) && !_return_lecture_list.contains(major_name)) {
        _return_lecture_list.add(major_name);
      }
    }
    return _return_lecture_list;
  }

  //검색 시 일치하느 단어 추천 리스트 보여줌
  //새로운 파일을 통해 코드의 길이를 줄이기 위해 분리 하고 싶었지만, evaluate_////_search_screen이 setState가 필요하고,
  //단어 추천은 Widget으로 구현 되엇기에, 어쩔수없이 같은 코드 파일 안에서 함수를 구현하였음.
  Widget evaluate_word_search_screen(List<Lecture> lecture_list, String input_word, int search_menu_index) {

    //교수 검색
    if(search_menu_index==0) {
      List<String> _professor_list = lecture_professor_word_list_check(lecture_list,input_word);
      return Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Container(
          height:600,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      FocusManager.instance.primaryFocus?.unfocus();
                      _search_menu_index_submitted = 0;
                      _controller?.text = _professor_list[index];
                    });
                  },
                  child: Text(_professor_list[index]),
                );
              },
              separatorBuilder: (context, index) => Divider(
                  thickness: 2,
                  color: Colors.black26
              ),
              itemCount: _professor_list.length
          ),
        ),
      );
    }
    //강의명 검색
    else if(search_menu_index==1) {
      List<String> _class_list = lecture_class_word_list_check(lecture_list,input_word);
      return Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Container(
          height: 600,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      FocusManager.instance.primaryFocus?.unfocus();
                      _search_menu_index_submitted = 1;
                      _controller?.text = _class_list[index];
                    });
                  },
                  child: Text(_class_list[index]),
                );
              },
              separatorBuilder: (context, index) =>
                  Divider(thickness: 2, color: Colors.black26),
              itemCount: _class_list.length),
        ),
      );
    }
    //학과 검색
    else {
      List<String> _major_list = lecture_major_word_list_check(lecture_list,input_word);
      return Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Container(
          height: 600,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      FocusManager.instance.primaryFocus?.unfocus();
                      _search_menu_index_submitted = 2;
                      _controller?.text = _major_list[index];
                    });
                  },
                  child: Text(_major_list[index]),
                );
              },
              separatorBuilder: (context, index) => Divider(
                  thickness: 2,
                  color: Colors.black26
              ),
              itemCount: _major_list.length
          ),
        ),
      );
    }
  }

  //2가지 경우시 해당 if문이 rebuild된다.
  //1. 일반적으로 textfield자체에서 enter를 통한 경우.
  //2. 단어 입력 시 자동으로 화면에 보여지는 추천 단어를 클릭 시.
  Widget _screen_select() {
    if(_search_menu_index_submitted == 0 || _search_menu_index_submitted == 1 || _search_menu_index_submitted == 2) {
      return evaluate_menu_search_screen(lecture_list : _lecture_list, input_name : _controller!.text, selected_menu_index : _search_menu_index_submitted);
    }
    else if(_search_menu_index_submitted == 4) {
      print("!!");
      print(_search_menu_index_submitted.toString());
      return evaluate_word_search_screen(_lecture_list, _controller!.text, _search_menu_index_not_submitted);
    }
    else {
      return Container();
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //화면 아무대나 눌렀을 때 포커스 해제 시켜줌.
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                          child: Icon(Icons.keyboard_backspace)
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: MediaQuery.of(context).size.width-100,
                        height: 35,
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 3),
                        child: Row(
                          children: [
                            Icon(Icons.search, size: 19),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: TextField(
                                  controller: _controller,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                      hintText: '검색어를 입력해주세요',
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.black12)),
                                  onSubmitted: (value) {
                                    _search_menu_index_submitted = _search_menu_index_not_submitted;
                                  },
                                  onChanged: (value) {
                                    //아래 evaluate_word_search_screen에서 controller.text를 참고하기에,
                                    //우리가 사용할 screen의 index인 _search_menu_index_submitted=4로 설정해주면 된다.
                                    setState(() {
                                      _search_menu_index_submitted = 4;
                                    });
                                    //여기서 변경사항 체크하면 될거 같은데..음..따로 screen을 만들어야할듯..
                                  },
                                  onTap: () {
                                    //처음 textfield를 클릭하였을 때 존재하는 교수/강의평/학과를 보여주기 위해
                                    //조건을 삽입하여 우리가 사용할 screen으로 setState로 처리해주었다.
                                    //해당 onTap이 없으면 초기 클릭 시 아무것도 나타나지 않음.
                                    setState(() {
                                      if(_controller!.text==''){
                                        _search_menu_index_submitted=4;
                                      }
                                    });
                                  },
                                ),
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    print(1);
                                    //textfield에 있는 문장/단어 초기화
                                    _controller?.text = '';
                                    // textfield에 있는 값을 초기화 하면, 이에 따라 화면도 초기화 함.
                                    _search_menu_index_submitted = 3;
                                    //포커스 해제
                                    FocusManager.instance.primaryFocus?.unfocus();
                                  });
                                },
                                child: Icon(Icons.cancel_outlined, size: 17)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
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
                    itemCount: _search_menu.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          setState(() {
                            //검색 기준 교수/강의평/학과 변경 시 화면도 기존 화면이 유지되는 것이 아닌, 초기 화면으로 이동시킴
                            _search_menu_index_submitted=3;
                            //검색 기준이 바뀔때 text field에 적힌 것도 초기화 해줌
                            _controller?.text='';
                            //아직 검색창에서 엔터를 치지 않은 상태의 index를 저장함.
                            _search_menu_index_not_submitted = index;
                          });
                          print(index);
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Text(
                            _search_menu[index],
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight:
                                (index == _search_menu_index_not_submitted)
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              _screen_select(),
              ],
          ),
        )
      ),
    );
  }
}
