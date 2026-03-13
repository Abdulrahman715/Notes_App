import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomEleveatedButton extends StatelessWidget {
  const CustomEleveatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
        backgroundColor: kPrimaryColor,
      ),
      child: Text(
        'Add Note',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
