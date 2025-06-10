import 'package:flutter/material.dart';
import 'package:xoxo/utils/colors.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextfield({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color:Color.fromARGB(195, 109, 135, 216),
            blurRadius: 11,
            spreadRadius: 2,
          )
        ]
      ),
      child: TextField(
        controller:  controller,
        decoration: InputDecoration(
          fillColor: bgColor,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}