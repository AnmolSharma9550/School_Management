import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management/src/constants/app_colors.dart';
import 'package:school_management/src/controller/login/login_controller.dart';

class CustomPasswordfield extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData? perfixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final bool realOnly;

  const CustomPasswordfield({
    super.key,
    required this.label,
    required this.hintText,
    this.perfixIcon,
    this.obscureText = false,
    this.controller,
    this.realOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    final Controller = Get.find<LoginController>();

    return Obx(() => TextFormField(
          onChanged: (value) {
            Controller.validatePassword(value);
          },
          obscureText: Controller.isPasswordVisible.value ? false : true,
          controller: controller,
          readOnly: realOnly,
          decoration: InputDecoration(
              errorText: Controller.passwordError.value.isNotEmpty
                  ? Controller.passwordError.value
                  : null,
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
              suffixIcon: IconButton(
                  onPressed: () {
                    Controller.isPasswordVisible.toggle();
                  },
                  icon: Icon(Controller.isPasswordVisible.value
                      ? Icons.visibility
                      : Icons.visibility_off))),
        ));
  }
}
