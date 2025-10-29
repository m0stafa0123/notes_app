import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/button_sheet_notes.dart';
import 'package:flutter_application_1/views/widgets/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ButtonSheetNotes();
            },
          );
        },
        backgroundColor: Color(0xFF5FE9D8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(25),
        ),
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: NotesBody(),
    );
  }
}
