import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  String text;
  void Function() onPressed;

  CommonButton({super.key, required this.text, required this.onPressed});

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Text(widget.text),
      style: ElevatedButton.styleFrom(fixedSize: Size(400, 50)),
    );
  }
}
