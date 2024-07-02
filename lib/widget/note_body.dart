import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_app_bar.dart';

class NoteBody extends StatelessWidget {
  const NoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 35,
        ),
        CustomAppBar(),
      ],
    );
  }
}