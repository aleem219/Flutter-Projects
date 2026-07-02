import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const RoundedInputField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        cursorColor: Colors.green,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.green),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2.0),
          ),
        ),
      ),
    );
  }
}