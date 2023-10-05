import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/widget/notes_list_view.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:   Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(
            title: 'Notes',
            iconData: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}


