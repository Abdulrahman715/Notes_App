import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_edit_app_bar_edit_view.dart';
import 'package:notes_app/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  static const String id = 'edit_note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarForEditView(), 
      body: EditNoteBody());
  }
}

