import 'package:flutter/material.dart';
import 'package:note_app/views/constant.dart';

class CustomTetFiled extends StatelessWidget {
  const CustomTetFiled(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChang});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
final void Function(String)? onChang;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
      child: TextFormField(
        onChanged:onChang ,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
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
