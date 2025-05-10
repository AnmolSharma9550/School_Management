import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management/src/controller/login/login_controller.dart';

class CustomEmailfield extends StatelessWidget {
  // final String label;
  final String hintText;
  final IconData? perfixIcon;
  final TextEditingController? controller;

  const CustomEmailfield({
    super.key,
    // required this.label,
    required this.hintText,
    this.perfixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final Controller = Get.find<LoginController>();

    return Obx(() => TextFormField(
          onChanged: (value) {
            Controller.validateEmail(value);
          },
          controller: controller,
          decoration: InputDecoration(
            errorText: Controller.emailError.value.isNotEmpty
                ? Controller.emailError.value
                : null,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey),
            ),
            prefixIcon: perfixIcon != null
                ? Icon(
                    perfixIcon,
                    color: Colors.grey,
                  )
                : null,
          ),
        ));
  }
}
