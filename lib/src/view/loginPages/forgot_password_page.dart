import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';
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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          CustomContainer(),
          Positioned(
            top: AppSizer().deviceHeight30,
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomFrontContainer(
              height: AppSizer().deviceHeight70,
              width: AppSizer().deviceWidth100,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppSizer().deviceWidth6),
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
                    CustomEmailfield(
                      // label: 'Email',
                      hintText: 'Enter your email',
                      perfixIcon: Icons.email,
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
                    CustomPasswordfield(
                      obscureText: true,
                      label: 'Password',
                      hintText: 'Enter new password',
                      perfixIcon: Icons.password,
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
                    CustomPasswordfield(
                      obscureText: true,
                      label: 'Password',
                      hintText: 'Re-Enter new password',
                      perfixIcon: Icons.password,
                    ),
                    SizedBox(
                      height: AppSizer().deviceHeight6,
                    ),
                    CustomButton(
                        text: 'Reset Password',
                        onPressed: () {},
                        gradient:
                            LinearGradient(colors: AppColors.gradientColor)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: AppSizer().deviceHeight16,
              left: AppSizer().deviceWidth10,
              child: SvgPicture.asset('assets/images/Group_8037.svg')),
        ],
      ),
    );
  }
}
