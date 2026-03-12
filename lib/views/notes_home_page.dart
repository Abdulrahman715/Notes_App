import 'package:flutter/material.dart';
import 'package:notes_app/helpers/custom_floating_action_button.dart';
import 'package:notes_app/widgets/add_note_button_sheet.dart';
import 'package:notes_app/widgets/notes_body.dart';

class NotesHomePage extends StatelessWidget {
  final VoidCallback onThemeToggole;

  const NotesHomePage({super.key, required this.onThemeToggole});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App'),
        actions: [
          IconButton(
            onPressed: onThemeToggole,
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),

      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddNoteButtonSheet(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            )
          );
        },
        message: 'Add Note',
      ),

      body: ListView.builder(
        itemBuilder: (context, index) => NotesBody(counter: index + 1),
        itemCount: 5,
      ),
    );
  }
}

