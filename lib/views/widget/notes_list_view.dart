
import 'package:flutter/cupertino.dart';
import 'package:notes/views/widget/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context ,index){
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 6),
        child:  NoteItem(),
      );
    });
  }
}