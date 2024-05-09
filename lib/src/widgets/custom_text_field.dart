import 'package:flutter/material.dart';
import 'package:max_open_task/src/values/app_theme.dart';

import '../values/app_colors.dart';

/// Created a [CustomTextField] widget with unique styling.
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.controller,
    this.onChanged,
    this.obscureText = false,
    this.errorText,
    this.hintText,
    super.key,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? errorText;
  final Function(String)? onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) => TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: AppColors.transparent,
              width: 1,
            ),
          ),
          filled: true,
          fillColor: AppColors.textInputBackground,
          contentPadding: const EdgeInsets.all(15),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.inputTextHint,
        ),
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText,
        onEditingComplete: () => FocusScope.of(context).nextFocus(),
      );
}
