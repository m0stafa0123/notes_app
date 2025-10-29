import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_button.dart';
import 'package:flutter_application_1/views/widgets/custom_text_field.dart';

class ButtonSheetNotes extends StatelessWidget {
  const ButtonSheetNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: FormButtonSheet()),
    );
  }
}

class FormButtonSheet extends StatefulWidget {
  const FormButtonSheet({super.key});

  @override
  State<FormButtonSheet> createState() => _FormButtonSheetState();
}

class _FormButtonSheetState extends State<FormButtonSheet> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode outovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            hint: "Title ",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: " contant",
            maxlines: 4,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 32),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                outovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
