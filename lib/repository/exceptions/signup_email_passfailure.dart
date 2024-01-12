



class SignUpEmailPassFailure {
  final String code;

 const  SignUpEmailPassFailure({this.code = 'An unknown error occurred'});




 factory SignUpEmailPassFailure.fromCode(String msg) {
    switch (msg) {
      case 'email-already-in-use':
        return const SignUpEmailPassFailure(
          code: 'The email address is already in use by another account.',
        );
      case 'invalid-email':
        return const SignUpEmailPassFailure(
          code: 'The email address is not valid.',
        );
      case 'operation-not-allowed':
        return const SignUpEmailPassFailure(
          code: 'Email/password accounts are not enabled.',
        );
      case 'weak-password':
        return const SignUpEmailPassFailure(
          code: 'The password is not strong enough.',
        );
      default:
        return const SignUpEmailPassFailure();
    }
  }
}