import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_app_bar.dart';
import 'package:flutter_application_1/views/widgets/custom_text_field.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomAppbar(icon: Icons.check, text: 'Edit Notes'),
        SizedBox(height: 50),
        CustomTextField(hint: "Title"),
        SizedBox(height: 16),
        CustomTextField(hint: "Contant", maxlines: 5),
      ],
    );
  }
}
