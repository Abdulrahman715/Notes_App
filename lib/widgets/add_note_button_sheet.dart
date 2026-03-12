import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 30), 
          CustomTextField(maxLines: 1 , hintText: 'Title'),
          SizedBox(height: 20), 
          CustomTextField(maxLines: 7, hintText: 'Content'  ),
        ],
      ),
    );
  }
}


