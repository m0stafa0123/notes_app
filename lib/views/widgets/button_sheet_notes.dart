import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:flutter_application_1/views/widgets/form_button_sheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ButtonSheetNotes extends StatelessWidget {
  const ButtonSheetNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNotefaluir) {
              print(state.erorrMessage);
            }
            if (state is AddNotesucsess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotelaoding ? true : false,
              child: FormButtonSheet(),
            );
          },
        ),
      ),
    );
  }
}
