import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        notes: notes,
      ),
    );
  }
}
