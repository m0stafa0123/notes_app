import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_application_1/models/notes_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key, required this.notesModel});
  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 12),
      height: 190,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          ListTile(
            title: Text(
              notesModel.title,
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 12),
              child: Text(
                notesModel.subtitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 16,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                notesModel.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
              icon: Icon(FontAwesomeIcons.trash),
              color: Colors.black,
              iconSize: 25,
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(right: 24),
            child: Text(
              notesModel.date,
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
