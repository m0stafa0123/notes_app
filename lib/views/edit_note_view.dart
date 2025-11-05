import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/notes_model.dart';
import 'package:flutter_application_1/views/widgets/edit_notes/edit_notes.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.notesModel});
  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: EditNotesBody(notesModel: notesModel),
      ),
    );
  }
}
