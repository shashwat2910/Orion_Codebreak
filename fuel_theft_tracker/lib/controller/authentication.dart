import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirebaseAuthentication extends GetxController {
   var uuid = "".obs;
   Future<void> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final user = FirebaseAuth.instance.currentUser;
      if (user!.uid.isEmpty) {
        Get.off('/');
      } else {
        uuid.value = user.uid;
        Get.toNamed('/dashboard');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar(
          "Error",
          "No user found for that email.",
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          maxWidth: 300,
        );
      } else if (e.code == 'wrong-password') {
        Get.snackbar(
          "Error",
          "Wrong password provided for that user.",
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          maxWidth: 300,
        );
      }
    }
  }
  Future<void> signUp(String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user!.sendEmailVerification();
      Get.snackbar(
        "Success",
        "Please verify your email!",
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
        maxWidth: 300,
      );
      Get.toNamed('/login');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar(
          "Error",
          "The password provided is too weak.",
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          maxWidth: 300,
        );
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar(
          "Error",
          "The account already exists for that email.",
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          maxWidth: 300,
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
