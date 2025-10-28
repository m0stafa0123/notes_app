import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_icon_search.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("NOTES", style: TextStyle(fontSize: 25)),
        CustomIconSearch(),
      ],
    );
  }
}
