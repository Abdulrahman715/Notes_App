import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

// ignore: must_be_immutable
class NotesBody extends StatelessWidget {
  NotesBody({super.key, required this.counter});

  Color color = Colors.black;
  FontWeight fontWeight = FontWeight.bold;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 23.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, EditNoteView.id);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFCC80),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 30.0, top: 35.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  textColor: color,
                  iconColor: color,
                  // leading: Icon(Icons.note),
                  title: Text(
                    'Note $counter',
                    style: TextStyle(fontWeight: fontWeight),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      'This is the first note.',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Handle delete action
                    },
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    'March 20, 2024',
                    style: TextStyle(
                      color: color,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
