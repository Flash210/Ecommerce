





import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  //final controller = Get.put(SignUpController());
final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
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
              const TextField(
               // controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16.0),
              const TextField(
           //     controller: passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
           
              ElevatedButton(
                onPressed: () {
                
                  }
            
        
        
           
                ,
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}