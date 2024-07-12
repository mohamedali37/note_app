import 'package:note_app/model/note_model.dart';

class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoading extends NoteState {}

class NoteSuccess extends NoteState {
  final List <NoteModel> noteList;

  NoteSuccess({required this.noteList});
}

class NoteFailure {
  final String err;

  NoteFailure({required this.err});

}