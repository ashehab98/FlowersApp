import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final dynamic textInputType;
  final bool isPassword;
  final String hintText;
  MyTextField({
    super.key,
    required this.textInputType,
    required this.isPassword,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(
          8.0,
        ),
      ),
    );
  }
}
