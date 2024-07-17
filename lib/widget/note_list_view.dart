import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_item_cubit/note_item_cubit.dart';
import 'package:note_app/cubits/note_item_cubit/note_item_states.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              controller: controller,
              padding: EdgeInsets.zero,
              itemCount: notes.length,   //state is NoteSuccess? state.notes!.length : 0,
              itemBuilder: (context, index) {
                return NoteItem(notes: notes[index],);
              }),
        );
      },
    );
  }
}
ScrollController controller = ScrollController();
