import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/model/note_model.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        notes.title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 26,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          notes.subTitle,
          style: TextStyle(
            color: Colors.black.withOpacity(.5),
            fontSize: 20,
          ),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          FontAwesomeIcons.trash,
          color: Colors.black,
          size: 26,
        ),
      ),
    );
  }
}
