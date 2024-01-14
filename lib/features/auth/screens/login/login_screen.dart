





import 'package:ecomerce/features/auth/controllers/sign_up_controller.dart';
import 'package:ecomerce/features/auth/screens/SignUp/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {

  final controller = Get.put(SignUpController());
final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           
              const SizedBox(height: 16.0),
               TextField(
                controller: controller.loginEmailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16.0),
               TextField(
              controller: controller.loginPasswordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
           
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    controller.loginUser();
                    
                  }
                
                  }
            
        
        
           
                ,
                child: const Text('Sign In'),
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  Get.to(SignUpScreen());
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}