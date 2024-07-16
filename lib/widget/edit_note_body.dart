import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_item_cubit/note_item_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/custom_app_bar.dart';
import 'package:note_app/widget/custom_text_field.dart';
import 'package:note_app/widget/edit_color_list_view.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.subTitle = subTitle ?? widget.notes.subTitle;
              widget.notes.save();
              BlocProvider.of<NoteCubit>(context).feachAllNotes();
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Note edit')));
            },
            text: 'Edit Notes',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            text: widget.notes.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            text: widget.notes.subTitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          EditColorListView(note: widget.notes,),
        ],
      ),

    );
  }
}
