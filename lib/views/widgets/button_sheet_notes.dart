import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_button.dart';
import 'package:flutter_application_1/views/widgets/custom_text_field.dart';

class ButtonSheetNotes extends StatelessWidget {
  const ButtonSheetNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hint: "Title "),
            SizedBox(height: 16),
            CustomTextField(hint: " contant", maxlines: 4),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
