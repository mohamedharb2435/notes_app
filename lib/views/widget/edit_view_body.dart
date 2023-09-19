import 'package:flutter/material.dart';
import 'package:notes/views/widget/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(
            iconData: Icons.check,
            title: 'Edit Note',
          ),
        ],
      ),
    );
  }
}
