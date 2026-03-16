import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_body.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: AddNoteBody(),
      ),
    );
  }
}

