import 'dart:math';

import 'package:flutter/material.dart';

class seekbar extends StatefulWidget {
  const seekbar({super.key});

  @override
  State<seekbar> createState() => _seekbarState();
}

class _seekbarState extends State<seekbar> {
  double red = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("seek bar"),
      ),
      body: Column(
        children: [
          Slider(
            min: 0,
            max: 100,
            value: red,
            onChanged: (value) {
              setState(() {
                red = value;
              });
            },
          ),
          Text(
            "deep",
            style:
                TextStyle(fontSize: max(red, 15), fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
