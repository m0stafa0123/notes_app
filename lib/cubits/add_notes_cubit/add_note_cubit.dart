import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/models/notes_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NotesModel notes) async {
    emit(AddNotelaoding());
    try {
      var notBox = Hive.box<NotesModel>(kNotesBox);
      emit(AddNotesucsess());
      await notBox.add(notes);
    } on Exception catch (e) {
      emit(AddNotefaluir(erorrMessage: e.toString()));
    }
  }
}
