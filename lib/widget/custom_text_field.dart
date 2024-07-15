import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.text, this.maxLines = 1, this.onSaved, this.onChanged});
  final String text;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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
