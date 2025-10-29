import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: kprimrycolor),
        border: border(),
        enabledBorder: border() , 
        focusedBorder: border(kprimrycolor) ,
        
      ),
    );
  }

  OutlineInputBorder border([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
