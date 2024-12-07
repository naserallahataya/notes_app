import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTetFiled extends StatelessWidget {
  const CustomTetFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        cursorColor: kPrinaryColor,
        decoration: InputDecoration(
            hintText: 'Title',
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
