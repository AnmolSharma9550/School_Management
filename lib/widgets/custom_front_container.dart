import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';

class CustomFrontContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;

  const CustomFrontContainer({super.key, this.height, this.width, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.appWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSizer().deviceSp24),
          topRight: Radius.circular(AppSizer().deviceSp24),
        ),
      ),
      child: child,
    );
  }
}
