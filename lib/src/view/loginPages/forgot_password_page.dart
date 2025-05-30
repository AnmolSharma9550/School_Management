import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/controller/login/forgot_password_controller.dart';
import 'package:school_management/src/view/loginPages/components/custom_button.dart';
import 'package:school_management/src/view/loginPages/components/custom_emailfield.dart';
import 'package:school_management/src/view/loginPages/components/custome_passwordfield.dart';
import 'package:school_management/widgets/custom_background_container.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgotPasswordController());

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          CustomContainer(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    'assets/images/Group_8037.svg',
                    height: AppSizer().deviceHeight30,
                  ),
                ),
                Positioned(
                  top: AppSizer().deviceHeight30,
                  left: 0,
                  right: 0,
                  child: CustomFrontContainer(
                    height: AppSizer().deviceHeight70,
                    width: AppSizer().deviceWidth100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSizer().deviceWidth6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Reset Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: AppSizer().deviceSp22,
                                  fontWeight: FontWeight.w600)),
                          Center(
                              child: Icon(Icons.person,
                                  size: AppSizer().deviceHeight10)),
                          SizedBox(
                            height: AppSizer().deviceHeight2,
                          ),
                          Text(
                            'Email :',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: AppSizer().deviceSp16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: AppSizer().deviceHeight1,
                          ),
                          Obx(
                            () => CustomEmailfield(
                              onChanged: (value) =>
                                  controller.validateEmail(value),
                              // label: 'Email',
                              controller: controller.emailController,
                              hintText: 'Enter your email',
                              perfixIcon: Icons.email,
                              errorText: controller.emailError.value.isNotEmpty
                                  ? controller.emailError.value
                                  : null,
                            ),
                          ),
                          SizedBox(
                            height: AppSizer().deviceHeight1,
                          ),
                          Text(
                            'Enter new password :',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: AppSizer().deviceSp16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: AppSizer().deviceHeight1,
                          ),
                          Obx(
                            () => CustomPasswordfield(
                              onChanged: (value) =>
                                  controller.validatePassword(value),
                              controller: controller.enterPasswordController,
                              obscureText: controller.isPasswordVisible.value,
                              label: 'Password',
                              hintText: 'Enter new password',
                              perfixIcon: Icons.password,
                              errorText:
                                  controller.enterPasswordError.value.isNotEmpty
                                      ? controller.enterPasswordError.value
                                      : null,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.isPasswordVisible.toggle();
                                  },
                                  icon: Icon(controller.isPasswordVisible.value
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                            ),
                          ),
                          SizedBox(
                            height: AppSizer().deviceHeight1,
                          ),
                          Text(
                            'Re-Enter new password :',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: AppSizer().deviceSp16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: AppSizer().deviceHeight1,
                          ),
                          Obx(
                            () => CustomPasswordfield(
                              onChanged: (value) =>
                                  controller.validateRePassword(value),
                              controller: controller.reEnterPasswordController,
                              obscureText: controller.isRePasswordVisible.value,
                              label: 'Password',
                              hintText: 'Re-Enter new password',
                              perfixIcon: Icons.password,
                              errorText: controller
                                      .reEnterPasswordError.value.isNotEmpty
                                  ? controller.reEnterPasswordError.value
                                  : null,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.isRePasswordVisible.toggle();
                                  },
                                  icon: Icon(
                                      controller.isRePasswordVisible.value
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                            ),
                          ),
                          SizedBox(
                            height: AppSizer().deviceHeight6,
                          ),
                          Obx(
                            () => CustomButton(
                              text: 'Reset Password',
                              onPressed: () {
                                controller.login();
                              },
                              gradient: LinearGradient(
                                  colors: AppColors.gradientColor),
                              isLoading: controller.isLoading.value,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
