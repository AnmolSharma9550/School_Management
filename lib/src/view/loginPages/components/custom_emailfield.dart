import 'package:flutter/material.dart';

class CustomEmailfield extends StatelessWidget {
  // final String label;
  final String hintText;
  final IconData? perfixIcon;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? errorText;

  const CustomEmailfield({
    super.key,
    // required this.label,
    required this.hintText,
    this.perfixIcon,
    this.controller,
    this.onChanged,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
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
                color: Colors.grey,
              )
            : null,
      ),
    );
  }
}

