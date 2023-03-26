import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  VoidCallback onPressed;
  Color buttonColor;
  Color? textColor = Colors.white;
  CustomButton(
      {super.key,
      required this.buttonName,
      required this.onPressed,
      required this.buttonColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
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
