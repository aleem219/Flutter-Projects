import 'package:flutter/material.dart';
const bottomContainerColour = Color(0xFFEB1555);
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const sizeBoxHeight = 15.0;

class IconWidget extends StatelessWidget {
  IconWidget({required this.text, this.icon});
  final String text;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) icon!,
        SizedBox(height: sizeBoxHeight),
        Text(
          text,
          style: labelTextStyle,
        )
      ],
    );
  }
}