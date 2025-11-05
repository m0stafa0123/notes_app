import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_application_1/models/notes_model.dart';
import 'package:flutter_application_1/views/widgets/custom/custom_app_bar.dart';
import 'package:flutter_application_1/views/widgets/custom/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNotesBody extends StatefulWidget {
  const EditNotesBody({super.key, required this.notesModel});
  final NotesModel notesModel;

  @override
  State<EditNotesBody> createState() => _EditNotesBodyState();
}

class _EditNotesBodyState extends State<EditNotesBody> {
  String? titel, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomAppbar(
          icon: Icons.check,
          text: 'Edit Notes',
          onTap: () {
            widget.notesModel.title = titel ?? widget.notesModel.title;
            widget.notesModel.subtitle = subtitle ?? widget.notesModel.subtitle;
            widget.notesModel.save();
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          },
        ),
        SizedBox(height: 50),
        CustomTextField(
          hint: widget.notesModel.title,
          onChanged: (value) {
            titel = value;
          },
        ),
        SizedBox(height: 16),
        CustomTextField(
          hint: widget.notesModel.subtitle,
          maxlines: 5,
          onChanged: (value) {
            subtitle = value;
          },
        ),
      ],
    );
  }
}
