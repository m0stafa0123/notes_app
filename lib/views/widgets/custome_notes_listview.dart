import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_application_1/models/notes_model.dart';
import 'package:flutter_application_1/views/widgets/custom_notes_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomeNotesListview extends StatelessWidget {
  const CustomeNotesListview({super.key});

  @override
  Widget build(context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NotesModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: CustomNotesItem(notesModel: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
