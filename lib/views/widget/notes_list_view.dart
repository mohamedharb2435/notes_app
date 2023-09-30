
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widget/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit ,NotesState>(
      builder: (context,state) {
  List<NoteModel> notes =BlocProvider.of<NotesCubit>(context).notes!    ;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length ,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: NoteItem(),
                );
              }),
        );
      },
    );
  }
}