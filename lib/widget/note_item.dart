import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/view/edit_note_view.dart';
import 'package:note_app/widget/custom_list_tile.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(notes.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomListTile(notes: notes,),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                notes.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
