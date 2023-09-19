
import 'package:flutter/cupertino.dart';
import 'package:notes/views/widget/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context ,index){
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 3),
          child:  NoteItem(),
        );
      }),
    );
  }
}