import 'package:note_app/model/note_model.dart';

class NoteState {}

class NoteInitial extends NoteState {}

class NoteSuccess extends NoteState {
  final List<NoteModel>? notes;

  NoteSuccess({this.notes});
}
