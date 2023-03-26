import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final String buttonName;
  VoidCallback onPressed;
  Color buttonColor;
  // ignore: prefer_const_constructors
  Color? textColor = Colors.black;
  CustomButton(
      {super.key,
      required this.buttonName,
      required this.onPressed,
      required this.buttonColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: buttonColor,
          foregroundColor: textColor,
        ),
        onPressed: onPressed,
        child: Text(buttonName),
      ),
    );
  }
}
