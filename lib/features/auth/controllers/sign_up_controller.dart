

import 'package:ecomerce/repository/auth_repository/auth_repository.dart';
import 'package:get/get.dart';


class SignUpController extends GetxController {

static SignUpController get instance => Get.find<SignUpController>();

void registerUser(String email,String password ){
  AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);

}



  }
