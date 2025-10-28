import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_app_bar.dart';
import 'package:flutter_application_1/views/widgets/custome_notes_listview.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        
        children: [
          SizedBox(height: 25),
          CustomAppbar(),
          SizedBox(height: 15),
          Expanded(child: CustomeNotesListview()),
        ],
      ),
    );
  }
}
