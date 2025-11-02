import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/models/notes_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async {
    try {
      var notBox = Hive.box<NotesModel>(kNotesBox);

      emit(Notesucsess(notes: notBox.values.toList()));
    } on Exception catch (e) {
      emit(Notefaluir(erorrMessage: e.toString()));
    }
  }
}
