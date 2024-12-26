import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/widgets/color_list_view.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_tet_filed.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              const ColorListView(),
              BlocBuilder<AddNotesCubit, AddNoteState>(
                builder: (context, state) {
                  return CustomButtom(
                    isLoading: state is AddNoteLoading ? true : false,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        var currentDate = DateTime.now();
                        var formattedCurrentDate =
                            DateFormat().add_yMd().format(currentDate);
                        var noteModel = NoteModel(
                            title: title!,
                            subTitle: subTitle!,
                            date: formattedCurrentDate,
                            color: Colors.blue.value);
                        BlocProvider.of<AddNotesCubit>(context)
                            .addNote(noteModel);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              )
            ],
          ),
        ),
      );
    });
  }
}
