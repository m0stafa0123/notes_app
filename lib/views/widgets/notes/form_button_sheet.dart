import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:flutter_application_1/models/notes_model.dart';
// import 'package:flutter_application_1/models/notes_model.dart';
import 'package:flutter_application_1/views/widgets/custom/custom_button.dart';
import 'package:flutter_application_1/views/widgets/custom/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                islaoding: state is AddNotelaoding ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurentDate = DateFormat.yMd().format(
                      currentDate,
                    );
                    var notesModel = NotesModel(
                      title: title!,
                      subtitle: subTitle!,
                      date: formattedCurentDate,
                      color: Colors.blueAccent.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(notesModel);
                  } else {
                    outovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
