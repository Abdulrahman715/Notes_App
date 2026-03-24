import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/services/save_and_load.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/notes_home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // هترجع true or false
  bool savedThemeIsDark = await ThemeService.loadTheme();

  // await Future.delayed(Duration(seconds: 2)); // Simulate a delay for loading theme

  await Hive.initFlutter(); // Initialize Hive

  //! it is a compiler to translate the obj of NoteModel to small peasces , beacuse computer can understand it
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox(kNotesBox); // Open a box for storing notes

  // هنبعت للتطبيق القيمة اللى جت
  runApp(NotesApp(isDark: savedThemeIsDark));
}

class NotesApp extends StatefulWidget {
  final bool isDark;

  const NotesApp({super.key, required this.isDark});

  @override
  State<NotesApp> createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  late ThemeMode _themeMode;

  // identify theme when app will start
  @override
  void initState() {
    super.initState();
    _themeMode = widget.isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void _toggleTheme() {
    setState(() {
      if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
        ThemeService.saveTheme(true);
      } else {
        _themeMode = ThemeMode.light;
        ThemeService.saveTheme(false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBarStyle = AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',

      // الثيم الفاتح مع تعديلات الـ AppBar
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.deepPurple,
        fontFamily: 'Poppins',
        appBarTheme: appBarStyle.copyWith(
          // لو حابب تخصص لون معين للدارك مود بس
          titleTextStyle: appBarStyle.titleTextStyle?.copyWith(
            color: Colors.black,
          ),
        ),
      ),

      // الثيم الغامق مع تعديلات الـ AppBar
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.deepPurple,
        appBarTheme: appBarStyle.copyWith(
          // لو حابب تخصص لون معين للدارك مود بس
          titleTextStyle: appBarStyle.titleTextStyle?.copyWith(
            color: Colors.white,
          ),
        ),
      ),

      themeMode: _themeMode,

      routes: {
        NotesHomePage.id: (context) =>
            NotesHomePage(onThemeToggole: _toggleTheme),
        EditNoteView.id: (context) => EditNoteView(),
      },

      initialRoute: NotesHomePage.id,
    );
  }
}
