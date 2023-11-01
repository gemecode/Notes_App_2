import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton(
      {super.key, required this.onPressed, this.child});
  final void Function() onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.black,
      onPressed: onPressed,
      child: child,
    );
  }
}
