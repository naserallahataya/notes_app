import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/constant.dart';
import 'package:note_app/views/widgets/color_list_view.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_tet_filed.dart';
import 'package:note_app/views/widgets/edit_note_color.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTetFiled(
              onChang: (value) {
                title = value;
              },
              hint: widget.note.title),
          CustomTetFiled(
            onChang: (value) {
              subTitle = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
          EditNtoeColors(
            note: widget.note,
          )
        ],
      ),
    );
  }
}
