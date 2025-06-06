import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:school_management/routes/app_routes.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
import 'package:school_management/src/controller/login/login_controller.dart';
import 'package:school_management/src/view/loginPages/components/custom_button.dart';
import 'package:school_management/src/view/loginPages/components/custom_emailfield.dart';
import 'package:school_management/src/view/loginPages/components/custome_passwordfield.dart';
import 'package:school_management/widgets/custom_background_container.dart';
import 'package:school_management/widgets/custom_front_container.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppSizer().deviceWidth6,
                            vertical: AppSizer().deviceHeight8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Hii Student',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: AppSizer().deviceSp22,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: AppSizer().deviceHeight1,
                            ),
                            Text('Sign in to continue',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: AppSizer().deviceSp16,
                                )),
                            SizedBox(
                              height: AppSizer().deviceHeight6,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Obx(
                                  () => CustomEmailfield(
                                    onChanged: (value) {
                                      controller.validateEmail(value);
                                    },
                                    controller: controller.emailController,
                                    hintText: 'Enter your email',
                                    perfixIcon: Icons.email,
                                    errorText:
                                        controller.emailError.value.isNotEmpty
                                            ? controller.emailError.value
                                            : null,
                                  ),
                                ),
                                SizedBox(
                                  height: AppSizer().deviceHeight1,
                                ),
                                Text(
                                  'Password :',
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
                                    onChanged: (password) =>
                                        controller.validatePassword(password),
                                    controller: controller.passwordController,
                                    label: 'Password',
                                    hintText: 'Enter your password',
                                    perfixIcon: Icons.password,
                                    errorText: controller
                                            .passwordError.value.isNotEmpty
                                        ? controller.passwordError.value
                                        : null,
                                    obscureText:
                                        controller.isPasswordVisible.value,
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          controller.isPasswordVisible.toggle();
                                        },
                                        icon: Icon(
                                            controller.isPasswordVisible.value
                                                ? Icons.visibility
                                                : Icons.visibility_off)),
                                  ),
                                ),
                                SizedBox(
                                  height: AppSizer().deviceHeight10,
                                ),
                              ],
                            ),
                            Obx(
                              () => CustomButton(
                                text: 'Sign In',
                                onPressed: () {
                                  controller.login();
                                },
                                gradient: LinearGradient(
                                    colors: AppColors.gradientColor),
                                isLoading: controller.isLoading.value,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                  onPressed: () {
                                    Get.toNamed(AppRoutes.forgotPassword);
                                  },
                                  child: Text(
                                    'Forget Password?',
                                  )),
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
        ));
  }
}
