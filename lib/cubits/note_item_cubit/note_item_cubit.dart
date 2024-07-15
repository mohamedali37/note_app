import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/note_item_cubit/note_item_states.dart';
import 'package:note_app/model/note_model.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List <NoteModel>? notes;
  feachAllNotes () {
      var readNotes = Hive.box<NoteModel>(kNoteBox);
      notes = readNotes.values.toList();
      emit(NoteSuccess());
  }
}