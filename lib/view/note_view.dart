import 'package:flutter/material.dart';
import 'package:note_app/widget/note_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteBody(),
    );
  }
}