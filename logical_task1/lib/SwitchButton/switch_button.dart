import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool value1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: value1 ? Colors.white : Colors.black,
      body: Center(
        child: Switch(
          value: value1,
          onChanged: (value) {
            setState(() {
              value1 = value;
            });
          },
        ),
      ),
    );
  }
}
