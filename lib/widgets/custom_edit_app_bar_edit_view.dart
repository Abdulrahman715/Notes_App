import 'package:flutter/material.dart';

class CustomAppBarForEditView extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarForEditView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    Color backGroundColor = isDark ? Colors.white : Colors.black;
    Color iconColor = isDark ? Colors.black : Colors.white;

    return AppBar(
      title: Text('Edit Note'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 8.0),
          child: IconButton.filled(
            style: IconButton.styleFrom(
              backgroundColor: backGroundColor,
              foregroundColor: iconColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
            ),
            onPressed: () {
              // Save note action
            },
            icon: Icon(Icons.check_rounded),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kMinInteractiveDimension);
}
