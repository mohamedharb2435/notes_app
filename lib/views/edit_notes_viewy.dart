import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/widget/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
