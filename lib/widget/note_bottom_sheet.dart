import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_button.dart';
import 'package:note_app/widget/custom_text_field.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomTextField(
              text: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              text: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
