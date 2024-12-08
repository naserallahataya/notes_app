import 'package:flutter/material.dart';
import 'package:note_app/views/constant.dart';

class CustomTetFiled extends StatelessWidget {
  const CustomTetFiled({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
      child: TextField(
        maxLines: maxLines,
        cursorColor: kPrinaryColor,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: kPrinaryColor),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kPrinaryColor)),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.white));
  }
}
