import 'package:flutter/material.dart';

class RatingScreenWrite extends StatefulWidget {
  const RatingScreenWrite({super.key});

  @override
  State<RatingScreenWrite> createState() => _RatingScreenWriteState();
}

class _RatingScreenWriteState extends State<RatingScreenWrite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
            child: const Text('<'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.black54,
              ))
        ]),
      ]),
    ));
  }
}
