import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_app_bar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            text: 'Edit Notes',
            icon: Icons.check,
            ),
        ],
      ),
    );
  }
}