import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_application_1/views/widgets/custom/custom_app_bar.dart';
import 'package:flutter_application_1/views/widgets/notes/custome_notes_listview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({super.key});

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override
void initState() {
  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [

          SizedBox(height: 25),
          CustomAppbar(text: 'Notes', icon: Icons.search),
          SizedBox(height: 15),
          Expanded(child: CustomeNotesListview()),
        ],
      ),
    );
  }
}
