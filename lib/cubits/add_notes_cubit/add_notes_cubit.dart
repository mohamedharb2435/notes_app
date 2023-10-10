import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';
part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit():super (AddNotesInitial ());
  Color color = const Color(0xff979DAC) ;
  addNote(NoteModel note )async{
    note.color=color!.value;
    emit(AddNotesLoading());
 try {
   var notesBox = Hive.box<NoteModel>(kNotesBox);
   await notesBox.add(note);
   emit(AddNotesSuccess());
 }  catch (e) {
   emit(AddNotesFailure(e.toString()));

 }
  }
}