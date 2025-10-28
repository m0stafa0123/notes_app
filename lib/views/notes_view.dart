import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NotesBody());
  }
}
