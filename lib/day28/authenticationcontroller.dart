import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kellton_flutter_training/day28/authenticationservice.dart';

class AuthenticationServiceController extends GetxController {
  AuthenticationService authService =
      AuthenticationService(FirebaseAuth.instance);
  Future<bool> registerUser(String email, String password) async {
    var result = await authService.signUp(email: email, password: password);
    return result;
  }

  Future<bool> validateUser(String email, String password) async {
    var result = await authService.signIn(email: email, password: password);
    return result;
  }
}
