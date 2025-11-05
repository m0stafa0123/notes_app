import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomeColor extends StatelessWidget {
  const CustomeColor({super.key, required this.isPicked, required this.color});
  final bool isPicked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isPicked
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(radius: 34, backgroundColor: color),
          )
        : CircleAvatar(radius: 34, backgroundColor: color);
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int indexCount = 0;
  List<Color> noteColors = [
    Color(0xFFFFF176),
    Color.fromARGB(255, 123, 175, 125),
    Color(0xFF81D4FA),
    Color.fromARGB(255, 173, 59, 59),
    Color.fromARGB(255, 167, 82, 183),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: noteColors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              indexCount = index;
              BlocProvider.of<AddNoteCubit>(context).color = noteColors[index];
              setState(() {});
            },
            child: CustomeColor(
              color: noteColors[index],
              isPicked: indexCount == index,
            ),
          ),
        );
      },
    );
  }
}
