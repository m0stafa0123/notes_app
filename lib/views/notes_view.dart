import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_application_1/views/widgets/button_sheet_notes.dart';
import 'package:flutter_application_1/views/widgets/notes_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
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
      ),
    );
  }
}
