
import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key, required this.hintText, required this.obscure, required this.controller});

  final String hintText;
  final bool obscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(13)),
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: TextField(
            controller: controller,
            obscureText: obscure,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: hintText),
          ),
        ),
      ),
    );
  }
}
