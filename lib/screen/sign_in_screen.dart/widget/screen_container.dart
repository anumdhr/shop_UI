import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.obscureText, this.suffixIcon,this.prefixIcon});
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      textAlign: TextAlign.center,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon:suffixIcon,
        prefixIcon: prefixIcon,
        hintText: labelText,
        // labelText: labelText,
        // alignLabelWithHint: false,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
