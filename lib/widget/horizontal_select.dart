// ignore_for_file: library_private_types_in_public_api, unused_field, avoid_print, no_logic_in_create_state, must_be_immutable

import 'package:flutter/material.dart';
import 'package:myapp/widget/header_no_detail.dart';
import 'package:myapp/widget/header_no_detail.dart';

class HorizontalSelect extends StatefulWidget {
  final bool isLabel;
  final String label;
  final List<String> items;
  final Function(int, String) onChanged;
  final TextStyle style;
  final int selectedIndex;

  const HorizontalSelect({
    super.key,
    this.isLabel = true,
    required this.label,
    required this.items,
    required this.onChanged,
    this.style = const TextStyle(fontSize: 10),
    this.selectedIndex = 0,
  });

  @override
  _HorizontalSelectState createState() => _HorizontalSelectState();
}

class _HorizontalSelectState extends State<HorizontalSelect> {
  late int selectedIndex;
  String selectedItem = '';

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
    selectedItem = widget.items[selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.isLabel) ...[
            HeaderNoDetail(header_name: widget.label)
            // Text(
            //   widget.label,
            //   textAlign: TextAlign.left,
            //   style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
            // ),
          ],
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                final item = widget.items[index];
                return Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all<Size>(Size(
                            MediaQuery.of(context).size.width * 0.80 / 5, 40)),
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.grey.shade400,
                            width: selectedIndex == index ? 1.2 : 1.0,
                          ),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        13.0))), // 원하는 round 값으로 조정
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                          selectedItem = item;
                          debugPrint(item);
                        });
                        widget.onChanged(index, item);
                      },
                      child: Text(
                        item,
                        style: widget.style.copyWith(
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.grey.shade400,
                          fontSize: selectedIndex == index ? 13 : 12,
                          fontWeight: selectedIndex == index
                              ? FontWeight.w500
                              : FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                      height: 20,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
