import 'package:flutter/material.dart';

class LineListView extends StatelessWidget {
  final List<List<String>> itemList;
  final List<Future<void> Function()>? onTap;
  final double fontSize;
  final double itemSpacing;
  final EdgeInsetsGeometry padding;

  const LineListView({
    Key? key,
    required this.itemList,
    required this.onTap,
    this.fontSize = 20,
    this.itemSpacing = 8.0,
    this.padding = const EdgeInsets.all(14.0),
  }) : super(key: key);

  void _onTapHandler(int index) async {
    if (onTap != null) await onTap![index](); // null 예외 처리
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemList.length,
      itemBuilder: (BuildContext context, int index) {
        final item = itemList[index];

        Widget textWidget;
        if (item.length == 2) {
          textWidget = Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item[0],
                style: TextStyle(fontSize: fontSize),
              ),
              Text(
                item[1],
                selectionColor: Colors.white54,
                style: TextStyle(fontSize: fontSize),
              ),
            ],
          );
        } else {
          textWidget = Text(
            item[0],
            style: TextStyle(fontSize: fontSize),
          );
        }

        return GestureDetector(
          onTap: () {
            _onTapHandler(index);
          },
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: itemSpacing, horizontal: 15),
            child: Container(
              child: Padding(
                padding: padding,
                child: textWidget,
              ),
            ),
          ),
        );
      },
    );
  }
}
