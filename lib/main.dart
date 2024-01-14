import 'package:ecomerce/features/auth/screens/SignUp/sign_up_screen.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';
 void main()  async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform,
   );

 // init();
  runApp(const MyApp());
  
}

/*
init() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final token = prefs.getString("userID");
  if (token != null) {
    print('Token: $token');
    Get.offAll(LoginScreen());
  } else {
    Get.offAll(HomeScreen());
  }
}*/


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SignUpScreen(),
);



  }
}
