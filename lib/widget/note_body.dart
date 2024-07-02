import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/widget/custom_app_bar.dart';
import 'package:note_app/widget/note_list_view.dart';

class NoteBody extends StatelessWidget {
  const NoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
