import 'package:ecomerce/features/auth/screens/HomeScreen/home_screen.dart';
import 'package:ecomerce/widgets/custom_button.dart';
import 'package:ecomerce/widgets/login_sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController=TextEditingController();
  final passwordController=TextEditingController();


  Future signIn() async{
   SharedPreferences shared = Get.find();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim()
    ).then((value){
      
        shared.setBool("islogged", true);
        Get.off(()=>HomeScreen());
      


    }
    );

  }

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE5E1DA),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hello Again "),
                  SizedBox(height: 100),
                  FormScreen(hintText: "Email", obscure: false,controller: emailController),
                  SizedBox(height: 10),
                  FormScreen(hintText: "Password", obscure: true,controller: passwordController,),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: signIn,
                      child: CustomButton(text: "Sign In")
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      text: 'Are you not a member? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

// create a login screen with a form that has two text fields for email and password
