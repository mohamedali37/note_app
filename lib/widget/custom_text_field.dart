import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.text, this.maxLines = 1, this.onSaved});
  final String text;
  final int maxLines;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: kPrimaryColor),
        enabledBorder: outlineInputBorder(color: Colors.white),
        focusedBorder: outlineInputBorder(color: kPrimaryColor),
        errorBorder: outlineInputBorder(color: Colors.red),
        focusedErrorBorder: outlineInputBorder(color: Colors.red),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
