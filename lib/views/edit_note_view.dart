import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/edit_notes.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: EditNotes(),
      ),
    );
  }
}
