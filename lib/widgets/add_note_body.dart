import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_elevated_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBody extends StatefulWidget {
  const AddNoteBody({super.key});

  @override
  State<AddNoteBody> createState() => _AddNoteBodyState();
}

class _AddNoteBodyState extends State<AddNoteBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,

      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(
            maxLines: 1,
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 20),
          CustomTextField(
            maxLines: 7,
            hintText: 'Content',
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 30),
          CustomEleveatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;

                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
