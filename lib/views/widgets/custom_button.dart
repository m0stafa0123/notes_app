import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.islaoding = false});
  final void Function()? onTap;
  final bool islaoding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kprimrycolor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: islaoding
              ? SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(color: Colors.black),
                )
              : Text(
                  " Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
