import 'package:ecomerce/features/auth/screens/HomeScreen/home_screen.dart';
import 'package:ecomerce/features/auth/screens/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      title: 'Commercy',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  FirebaseAuth.instance.currentUser == null ? LoginScreen() : const HomeScreen(),
);



  }
}
