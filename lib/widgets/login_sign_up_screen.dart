import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key, required this.hintText, required this.obscure});

  final String hintText;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(13)),
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: TextField(
            obscureText: obscure,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: hintText),
          ),
        ),
      ),
    );
  }
}
