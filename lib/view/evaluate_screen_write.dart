import 'package:flutter/material.dart';
import 'package:myapp/widget/horizontal_select.dart';

class EvaluateScreenWrite extends StatefulWidget {
  const EvaluateScreenWrite({super.key});

  @override
  State<EvaluateScreenWrite> createState() => _EvaluateScreenWriteState();
}

class _EvaluateScreenWriteState extends State<EvaluateScreenWrite> {
  int? _purposeIndex;
  String? _purposeValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1, // 화면 높이의 10%
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_sharp),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.05, 10, 0, 0),
              child: HorizontalSelect(
                label: "수강하신 학기를 알려주세요",
                items: const <String>['다이어트', '벌크업', '유지'],
                isLabel: true,
                selectedIndex: _purposeIndex!,
                onChanged: (idx, value) {
                  _purposeIndex = idx;
                  _purposeValue = value;
                  debugPrint('Change to $value');
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /* 평소 활동량 */
            // Padding(
            //   padding: EdgeInsets.fromLTRB(
            //       MediaQuery.of(context).size.width * 0.05,
            //       AppDimens.whitespaceSize3,
            //       0,
            //       0),
            //   child: HorizontalSelect(
            //     label: AppTexts.userInfoMessage6,
            //     items: const <String>['1', '2', '3', '4', '5'],
            //     selectedIndex: _activityLevelIndex!,
            //     onChanged: (idx, value) {
            //       _activityLevelIndex = idx;
            //       _activityLevelValue = value;
            //       debugPrint('Change to $value');
            //     },
            //   ),
            // ),
            // 다른 자식 위젯들을 추가할 수 있음
          ],
        ),
      ),
    );
  }
}
