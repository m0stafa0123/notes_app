import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:flutter_application_1/models/notes_model.dart';
import 'package:flutter_application_1/views/widgets/notes_sheet/custome_color_list_view.dart';
// import 'package:flutter_application_1/views/widgets/custom/custome_color_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorsListViewEdit extends StatefulWidget {
  const ColorsListViewEdit({super.key, required this.notesModel});
  final NotesModel notesModel;

  @override
  State<ColorsListViewEdit> createState() => _ColorsListViewEditState();
}

class _ColorsListViewEditState extends State<ColorsListViewEdit> {
  int indexCount = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: knoteColors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              indexCount = index;
              widget.notesModel.color = knoteColors[index].value;
              setState(() {});
            },
            child: CustomeColor(
              color: knoteColors[index],
              isPicked: indexCount == index,
            ),
          ),
        );
      },
    );
  }
}
