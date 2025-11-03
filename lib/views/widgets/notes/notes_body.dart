import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/edit_note_view.dart';
import 'package:flutter_application_1/views/widgets/custom/custom_app_bar.dart';
import 'package:flutter_application_1/views/widgets/notes/custome_notes_listview.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EditNoteView()),
          );
        },
        child: Column(
          children: [
            SizedBox(height: 25),
            CustomAppbar(text: 'Notes', icon: Icons.search),
            SizedBox(height: 15),
            Expanded(child: CustomeNotesListview()),
          ],
        ),
      ),
    );
  }
}
