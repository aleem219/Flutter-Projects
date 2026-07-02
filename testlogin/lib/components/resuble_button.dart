import 'package:flutter/material.dart';
import 'const.dart';

class ResuableRoundButton extends StatelessWidget {
  ResuableRoundButton({required this.onPressed, required this.bottomTitle, this.width});

  final VoidCallback? onPressed;
  final String bottomTitle;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: 45,
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: Text(
            bottomTitle,
            style: kTempTextStyle,
          ),
        ),
      ),
    );
  }
}