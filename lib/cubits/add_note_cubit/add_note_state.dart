part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNotesInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMassage;
  AddNoteFailure(this.errMassage);
}
