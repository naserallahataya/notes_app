import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/constant.dart';

part 'add_note_state.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNotesInitial());

  Color color = const Color(0xffFDF0D5);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
