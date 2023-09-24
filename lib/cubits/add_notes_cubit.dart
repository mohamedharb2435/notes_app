import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_model.dart';

part 'add_notes_state.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit():super(NotesInitial());

  addNote(NoteModel note ){

  }
}