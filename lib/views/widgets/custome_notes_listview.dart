import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_notes_item.dart';

class CustomeNotesListview extends StatelessWidget {
  const CustomeNotesListview({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: CustomNotesItem(),
          );
        },
      ),
    );
  }
}
