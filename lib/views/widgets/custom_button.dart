import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: kprimrycolor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          " Add",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
