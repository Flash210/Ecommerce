


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Good"),
            Spacer(),
            MaterialButton(
                color: Colors.amber,
                onPressed: (){
              FirebaseAuth.instance.signOut();
            })
          ],
        ),
      ),
    );
  }
}
