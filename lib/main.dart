import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/view/note_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        //scaffoldBackgroundColor: Colors.amber
      ),
      home: const NoteView(),
    );
  }
}
