import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management/routes/app_routes.dart';
import 'package:school_management/src/constants/app_colors.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RegExp emailRegEx = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$');

  RxString emailError = RxString('');
  RxString passwordError = RxString('');
  RxBool isLoading = false.obs;
  RxBool isPasswordVisible = false.obs;

  bool validateEmail(String email) {
    if (email.isEmpty) {
      emailError.value = 'Email is required';
      return false;
    }

    if (!emailRegEx.hasMatch(email)) {
      emailError.value = 'Invalid email format';
      return false;
    }
    emailError.value = ''; // Clear the error message
    return true;
  }

  bool validatePassword(String password) {
    if (password.isEmpty) {
      passwordError.value = 'Password is required';
      return false;
    }
    if (password.length < 6) {
      passwordError.value = 'Password must be at least 6 characters';
      return false;
    }
    passwordError.value = ''; // Clear the error message
    return true;
  }

  void login() async {
    String email = emailController.text;
    String password = passwordController.text;

    bool isEmailValid = validateEmail(email);
    bool isPasswordValid = validatePassword(password);

    if (isEmailValid && isPasswordValid) {
      // Proceed with login
      print('Email: $email, Password: $password');
      isLoading.value = true;

      await Future.delayed(Duration(seconds: 3));
      isLoading.value = false;
      Get.toNamed(AppRoutes.dashBoard);
      Get.snackbar(
        'LOGIN',
        'LOGIN SUCCESSFUL',
        animationDuration: Duration(seconds: 2),
        backgroundColor: AppColors.appgreen,
        colorText: AppColors.appWhite,
        borderRadius: 13.0,
      );
    } else {
      // Validation failed, errors are displayed in the UI
      print('Validation failed');
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
