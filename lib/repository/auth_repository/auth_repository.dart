



import 'package:ecomerce/features/auth/screens/HomeScreen/home_screen.dart';
import 'package:ecomerce/features/auth/screens/SignUp/sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository {

static AuthenticationRepository get instance => Get.find();


final auth=FirebaseAuth.instance;


late final Rx<User?> firebaseUser;

@override
void onReady(){

  firebaseUser=Rx<User?> (auth.currentUser);
  
   firebaseUser.bindStream(auth.authStateChanges()); // it will listen to any changes in the auth state


}


setInitialScreen(User? user){

user== null ? Get.offAll(() => SignUpScreen()) :Get.offAll(() => HomeScreen());

}}