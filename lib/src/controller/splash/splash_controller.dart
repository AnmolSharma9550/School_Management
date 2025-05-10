import 'dart:async';

import 'package:get/get.dart';
import 'package:school_management/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () {
      Get.offAndToNamed(AppRoutes.login);
    });
  }
}
