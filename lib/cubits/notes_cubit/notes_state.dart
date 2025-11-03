part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class Notelaoding extends NotesState {}

final class Notesucsess extends NotesState {}
