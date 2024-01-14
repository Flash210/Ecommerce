


import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key, required this.hinttext, required this.myController});
  final String hinttext;
  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: myController,
      decoration: InputDecoration(
        hintText: hinttext,
 contentPadding: EdgeInsets.symmetric(
      vertical: MediaQuery.of(context).size.height * 0.02, // 2% of screen height
      horizontal: MediaQuery.of(context).size.width * 0.02, // 2% of screen width
    ),        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(50),
         borderSide: const BorderSide(
          color: Color.fromARGB(255,184,184,184)
         )
        )
      )
    );
  }
}