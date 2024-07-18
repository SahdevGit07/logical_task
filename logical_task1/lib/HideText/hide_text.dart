import 'package:flutter/material.dart';

class HideText extends StatefulWidget {
  const HideText({super.key});

  @override
  State<HideText> createState() => _HideTextState();
}

class _HideTextState extends State<HideText> {
  bool vlue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Checkbox(
              value: vlue,
              onChanged: (value) {
                setState(() {
                  vlue = value!;
                });
              },
            ),
            if (vlue) Text("Sahdev Shisha")
          ],
        ),
      ),
    );
  }
}
