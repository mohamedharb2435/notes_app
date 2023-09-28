import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/add_notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/notes_view.dart';

void main() async{
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter( NoteModelAdapter());
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNotesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness:Brightness.dark,
        ),
        home: const NotesView(),
      ),
    );
  }
}

