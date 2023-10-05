import 'package:flutter/material.dart';
import 'package:notes/views/widget/floating_action_menu.dart';
import 'package:notes/views/widget/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton:Padding(
        padding:  EdgeInsets.all(24),
        child:FloatingActionMenu(),
      ),
      body:  NoteViewBody(),
    );
  }
}



// FloatingActionButton(
// onPressed: (){
// showModalBottomSheet(
// isScrollControlled: true,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(16),
// ),
// context: context,
// builder: (context){
// return  const AddNoteBottomSheet();
// }
// );
// },
// child:const Icon(Icons.add),
// ),