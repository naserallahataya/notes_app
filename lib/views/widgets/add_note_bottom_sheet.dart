import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_tet_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTetFiled(hint: 'Title'),
        CustomTetFiled(hint: 'Content', maxLines: 5),
      ],
    );
  }
}
