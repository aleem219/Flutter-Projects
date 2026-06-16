import 'package:flutter/material.dart';
import 'constants.dart';

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
        SizedBox(height: kSizeBoxHeight),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}