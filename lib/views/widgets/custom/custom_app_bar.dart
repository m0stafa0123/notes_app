import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom/custom_icon_search.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 25)),
        Spacer(flex: 1),
        CustomIconSearch(icon: icon, onTap: onTap),
      ],
    );
  }
}
