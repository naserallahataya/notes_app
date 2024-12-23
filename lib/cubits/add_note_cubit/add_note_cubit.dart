import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/model/note_model.dart';

part 'add_note_state.dart';

class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNotesInitial());


  addNote(NoteModel note){



  }
}
 