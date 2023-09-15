import 'package:flutter/material.dart';
import 'package:notes/views/widget/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  NoteViewBody(),
    );
  }
}
