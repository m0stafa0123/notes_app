import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/views/notes_view.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const NotesView(),
    );
  }
}
