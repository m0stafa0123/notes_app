part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNotelaoding extends AddNoteState {}

final class AddNotesucsess extends AddNoteState {}

final class AddNotefaluir extends AddNoteState {
  final String erorrMessage;

  AddNotefaluir({required this.erorrMessage});
}
