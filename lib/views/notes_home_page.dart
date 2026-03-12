import 'package:flutter/material.dart';

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
    );
  }
}
