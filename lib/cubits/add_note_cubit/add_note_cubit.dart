import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:note_app/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit(super.initialState);
  Color color = const Color(0xffAC3931);
  addNote(NoteModel note) {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notes = Hive.box<NoteModel>(kNoteBox);
      notes.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(err: e.toString()));
    }
  }
}
