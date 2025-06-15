import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:school_management/src/controller/splash/splash_controller.dart';
import 'package:school_management/widgets/custom_background_container.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController _ = Get.put(SplashController());
    return Scaffold(
      body: Stack(
        children: [
          CustomContainer(),
          Center(
            child: SvgPicture.asset(
              'assets/images/splash.svg',
            ),
          ),
        ],
      ),
    );
  }
}
