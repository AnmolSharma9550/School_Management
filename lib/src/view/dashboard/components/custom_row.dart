import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/constants/app_sizer.dart';

class CustomRow extends StatelessWidget {
  final String text;
  final String? btntext;
  final VoidCallback? onTap;
  const CustomRow({super.key, required this.text, this.btntext, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: TextStyle(
              color: AppColors.appBlack,
              fontSize: AppSizer().deviceSp16,
            )),
        if (btntext != null)
          InkWell(
            onTap: onTap,
            child: Text(
              btntext!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.appPrimaryColor,
                fontSize: AppSizer().deviceSp16,
              ),
            ),
          ),
      ],
    );
  }
}
