import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helpers/outline_input_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.maxLines,
    required this.hintText,
    this.onSaved,
  });

  final int maxLines;
  final String hintText;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
        ),
        enabledBorder: customOutlineInputBorder(
          Theme.of(context).colorScheme.onSurface,
        ),
        focusedBorder: customOutlineInputBorder(kPrimaryColor),
      ),
    );
  }
}
