


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF557A46)
        ),
        child: Center(
         child: Text(text,
         style: const TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,
           fontSize: 18

         ),
         ),
        ),
      ),

    );
  }
}
