

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecomerce/features/auth/screens/HomeScreen/home_screen.dart';
import 'package:ecomerce/features/auth/screens/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class SignUpController extends GetxController {

  

  // sign up text editing controllers

 // final TextEditingController emailController = TextEditingController();
 // final TextEditingController passwordController = TextEditingController();

  // login text editing controllers
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> createAccount(TextEditingController email,TextEditingController pass) async {
    final user = await _auth.createUserWithEmailAndPassword(
        email: email.text, password: pass.text);

    final firestore = FirebaseFirestore.instance;
    firestore.collection('users').doc(user.user!.uid).set(
        {"email": email.text, "password": pass.text});

    // ignore: unnecessary_null_comparison
    if (user != null) {
      Get.to(const HomeScreen());
    } else {
Get.snackbar("Error", "Error"); 
  }
  }

  Future<void> loginUser() async {
    final user = await _auth.signInWithEmailAndPassword(
        email: loginEmailController.text,
        password: loginPasswordController.text);
    // ignore: unnecessary_null_comparison
    if (user != null) {
      // lets save user with shared prefrences

     /* SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("userID", user.user!.uid);*/
      
      Get.to(const HomeScreen());
    } else {
                 // AwesomeDialog(context: context)

      print('error');
    }
  }


  Future<void> logoutUser() async {
    await _auth.signOut();
   /* SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();*/
    Get.offAll(LoginScreen());
  }
}


/*
static SignUpController get instance => Get.find<SignUpController>();

void registerUser(String email,String password ){
  AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);

}



  }*/
