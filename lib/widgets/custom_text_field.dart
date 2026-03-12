import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helpers/outline_input_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.maxLines, required this.hintText});

  final int maxLines;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5)),
        enabledBorder: customOutlineInputBorder(
          Theme.of(context).colorScheme.onSurface,
        ),
        focusedBorder: customOutlineInputBorder(kPrimaryColor),
      ),
    );
  }
}
