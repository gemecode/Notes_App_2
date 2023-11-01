import 'package:flutter/material.dart';

void showMyModalBottomSheet({
  required context,
  // bool isScrollControlled = true,
  // Padding Function(dynamic context)? builder,
  required Widget child,
}) {
  showModalBottomSheet(
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    context: context,
    isScrollControlled: true,
    builder: (context) => Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: child,
    ),
  );
}
