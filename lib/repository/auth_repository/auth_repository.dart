



import 'package:ecomerce/features/auth/screens/HomeScreen/home_screen.dart';
import 'package:ecomerce/features/auth/screens/welcome/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository {




static AuthenticationRepository get instance => Get.find();


final auth=FirebaseAuth.instance;


late final Rx<User?> firebaseUser;

@override
void onReady() {  
  
  firebaseUser = Rx<User?>(auth.currentUser);
  firebaseUser.bindStream(auth.userChanges());

  ever(firebaseUser, setInitialScreen);     
    
}






setInitialScreen(User? user){

user== null ? Get.offAll(() => const Welcome()) :Get.offAll(() => const HomeScreen());

}

Future<void> createUserWithEmailAndPassword(String email,String password) async{

  try{
    await auth.createUserWithEmailAndPassword(email: email, password: password);

      firebaseUser.value!=null ? Get.offAll(() => const HomeScreen()) :Get.to(() => const Welcome());

  } catch (e){
    Get.snackbar("Error creating account", e.toString(),snackPosition: SnackPosition.BOTTOM);
  }


  Future<void> signInWithEmailAndPassword(String email,String password) async{

  try{
    await auth.signInWithEmailAndPassword(email: email, password: password);
  } catch (e){
    Get.snackbar("Error signing in", e.toString(),snackPosition: SnackPosition.BOTTOM);
  }
}


Future<void> signOut() async{

  try{
    await auth.signOut();
  }  catch (e){
    Get.snackbar("Error signing out", e.toString(),snackPosition: SnackPosition.BOTTOM);
  }


}
}}
