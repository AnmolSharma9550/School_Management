import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management/routes/app_routes.dart';
import 'package:school_management/src/constants/app_colors.dart';

class ForgotPasswordController extends GetxController {
  final emailController = TextEditingController();
  final enterPasswordController = TextEditingController();
  final reEnterPasswordController = TextEditingController();
  RegExp emailRegEx = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$');

  RxString emailError = RxString('');
  RxString enterPasswordError = RxString('');
  RxString reEnterPasswordError = RxString('');
  RxBool isLoading = false.obs;
  RxBool isPasswordVisible = false.obs;
  RxBool isRePasswordVisible = false.obs;

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
      enterPasswordError.value = 'Password is required';
      return false;
    }
    if (password.length < 6) {
      enterPasswordError.value = 'Password must be at least 6 characters';
      return false;
    }
    enterPasswordError.value = ''; // Clear the error message
    return true;
  }

  bool validateRePassword(String password) {
    if (password.isEmpty) {
      reEnterPasswordError.value = 'Password is required';
      return false;
    }
    if (password != enterPasswordController.text) {
      reEnterPasswordError.value = 'Password does not match';
      return false;
    }
    reEnterPasswordError.value = ''; // Clear the error message
    return true;
  }

  void login() async {
    String email = emailController.text;
    String password = enterPasswordController.text;
    String reEnterPassword = reEnterPasswordController.text;

    bool isEmailValid = validateEmail(email);
    bool isPasswordValid = validatePassword(password);
    bool isRePasswordValid = validateRePassword(reEnterPassword);

    if (isEmailValid && isPasswordValid && isRePasswordValid) {
      // Proceed with login
      print(
          'Email: $email, Password: $password, RePassword : $reEnterPassword');
      isLoading.value = true;

      await Future.delayed(Duration(seconds: 3));
      isLoading.value = false;
      Get.toNamed(AppRoutes.login);
      fieldClear();
      Get.snackbar(
        'SUCCESSFUL',
        'Reset password successfully',
        animationDuration: Duration(seconds: 2),
        backgroundColor: AppColors.lightBlue,
        colorText: AppColors.appWhite,
        borderRadius: 13.0,
      );
    } else {
      // Validation failed, errors are displayed in the UI
      print('Validation failed');
    }
  }

  void fieldClear() {
    emailController.clear();
    enterPasswordController.clear();
    reEnterPasswordController.clear();
  }
}
