import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_appBar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 15), CustomAppbar()]);
  }
}
