import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });

  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  // final String? Function(String?)? validator;
  final String title;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'the field must not be empty';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: const TextStyle(color: AppColors.primaryColor),
        border: buildCustomBorder(),
        enabledBorder: buildCustomBorder(),
        focusedBorder: buildCustomBorder(color: AppColors.primaryColor),
      ),
    );
  }

  OutlineInputBorder buildCustomBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
