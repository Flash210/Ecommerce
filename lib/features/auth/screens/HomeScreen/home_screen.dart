


import 'package:ecomerce/features/auth/controllers/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

      final controller = Get.put(SignUpController());

    return  Scaffold(
      body: Column(
        children: [
          const Text("Good"),
        const SizedBox(height: 20),
          MaterialButton(
              child: const Text("Logout"),
              onPressed: () {
                controller.logoutUser();
              }, 
                  

              )
        ],
      ),
    );
  }
}
