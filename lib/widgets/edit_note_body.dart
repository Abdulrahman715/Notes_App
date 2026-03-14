import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 45.0),
        child: Column(
          children: [
            CustomTextField(maxLines: 1, hintText: 'Title'),
            const SizedBox(height: 16),
            CustomTextField(maxLines: 7, hintText: 'Content'),
          ],
        ),
      ),
    );
  }
}
