import 'package:ecomerce/componets/custom_button.dart';
import 'package:ecomerce/componets/custom_sized_box.dart';
import 'package:ecomerce/componets/custom_text_form.dart';
import 'package:ecomerce/constants/text_strings.dart';
import 'package:ecomerce/features/auth/controllers/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final controller = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidh = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(screenWidh * 0.05),
        child: ListView(
          children: [
            Form(
              key: formKey,
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBoxy(height: screenHeight * 0.3),
                CustomTextForm(
                    hinttext: userName, myController: usernameController),
                SizedBoxy(height: screenHeight * 0.02),
                CustomTextForm(hinttext: email, myController: emailController),
                SizedBoxy(height: screenHeight * 0.02),
                CustomTextForm(
                    hinttext: password, myController: passwordController),
                SizedBoxy(height: screenHeight * 0.02),
                CustomTextForm(hinttext: phone, myController: phoneController),
               SizedBoxy(height: screenHeight * 0.05),

                  Center(child: 
                 CustomButton(buttonText: signUpButton,onPressed: (){
  controller.createAccount(emailController,passwordController);
}))
                                 

              ],
            ))
          ],
        ),
      ),
    );
  }
}
