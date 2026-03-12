import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String message;

  const CustomFloatingActionButton({super.key, required this.onPressed, required this.message});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      verticalOffset: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: TextStyle(
        color: Theme.of(context).colorScheme.surface,
        fontSize: 14,
      ),

      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}