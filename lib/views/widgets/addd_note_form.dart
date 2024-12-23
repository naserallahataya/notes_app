
import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_tet_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTetFiled(
                  onSaved: (value) {
                    title = value;
                  },
                  hint: 'Title'),
              CustomTetFiled(
                  onSaved: (value) {
                    subTitle = value;
                  },
                  hint: 'Content',
                  maxLines: 5),
              const SizedBox(
                height: 64,
              ),
              CustomButtom(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {
                      
                    });
                  }
                },
              )
            ],
          ),
        ),
      );
    });
  }
}
