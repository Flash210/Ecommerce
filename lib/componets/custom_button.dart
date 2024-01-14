


import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,  required this.buttonText, this.onPressed});

  final String buttonText;
  final  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      

   
        onPressed: onPressed,
        child: Text(buttonText,style: const TextStyle(
          color: Colors.white
        ),)

    );
  }
}