import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:note_app/cubits/note_item_cubit/note_item_cubit.dart';
import 'package:note_app/widget/note_form.dart';
import 'package:note_app/widget/note_list_view.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(AddNoteInitial()),
      child: Padding(
        padding: EdgeInsets.only(right: 16, left: 16, bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              BlocProvider.of<NoteCubit>(context).feachAllNotes();
              Navigator.pop(context);
              NoteListView.controller.animateTo(
                NoteListView.controller.position.maxScrollExtent, 
                duration: const Duration(seconds: 1), 
                curve: Curves.fastOutSlowIn,
                );
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Note added')));
            } else if (state is AddNoteFailure) {
              Center(child: Text(state.err.toString()));
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: const SingleChildScrollView(child: NoteForm()));
          }
        ),
      ),
    );
  }
}
