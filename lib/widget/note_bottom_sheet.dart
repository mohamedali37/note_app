import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_button.dart';
import 'package:note_app/widget/custom_text_field.dart';

class NoteBottomSheet extends StatefulWidget {
  const NoteBottomSheet({super.key});

  @override
  State<NoteBottomSheet> createState() => _NoteBottomSheetState();
}

class _NoteBottomSheetState extends State<NoteBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                text: 'title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                text: 'content',
                maxLines: 5,
              ),
              SizedBox(
                height: 60,
              ),
              CustomButton(
                onTap: () {
                  if(formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {
                      
                    });
                  }
              },),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
