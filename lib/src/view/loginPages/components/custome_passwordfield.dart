import 'package:flutter/material.dart';
import 'package:school_management/src/constants/app_colors.dart';

class CustomPasswordfield extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData? perfixIcon;
  final bool obscureText;
  final bool realOnly;
  final String? errorText;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  final void Function(String)? onChanged;

  const CustomPasswordfield(
      {super.key,
      required this.label,
      required this.hintText,
      this.perfixIcon,
      this.obscureText = false,
      this.controller,
      this.realOnly = false,
      this.onChanged,
      this.errorText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      controller: controller,
      readOnly: realOnly,
      decoration: InputDecoration(
          errorText: errorText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          prefixIcon: perfixIcon != null
              ? Icon(
                  perfixIcon,
                  color: AppColors.appBackgroundColor,
                )
              : null,
          suffixIcon: suffixIcon),
    );
  }
}
