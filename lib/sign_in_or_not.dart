




import 'package:ecomerce/features/auth/screens/HomeScreen/home_screen.dart';
import 'package:ecomerce/features/auth/screens/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInOrNot extends StatelessWidget {
  const SignInOrNot({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
            if ( snapshot.hasData){
              return const HomeScreen();
            }else
              {
                return LoginScreen();
              }
          }
      ),
    );
  }
}
