import 'package:flutter/material.dart';
import 'package:notes/views/widget/custom_app_bar.dart';
import 'package:notes/views/widget/custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(
            iconData: Icons.check,
            title: 'Edit Note',
          ),
          SizedBox(height: 40,),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16,),
          CustomTextField(
            hint: 'content',
          maxLines: 6,
          ),
        ],
      ),
    );
  }
}
