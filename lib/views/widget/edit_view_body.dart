import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widget/custom_app_bar.dart';
import 'package:notes/views/widget/custom_text_filed.dart';
import 'package:notes/views/widget/edit_note_coolors_list_view.dart';
import 'package:notes/views/widget/show_snack_status.dart';

int? newColor;
class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.noteModel}) : super(key: key);
final NoteModel noteModel ;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title , content ;
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 40,),
          CustomAppBar(
            onPressed: () {
              widget.noteModel.title =title ?? widget.noteModel.title ;
              widget.noteModel.subTitle =content ?? widget.noteModel.subTitle ;
              widget.noteModel.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes() ;
              Navigator.pop(context);
              snackStatus(context);
            },
            iconData: Icons.check,
            title: 'Edit Note',
          ),
          const SizedBox(height: 40,),
           CustomTextField(
              onChange: (value){
                title =value ;
              },
              hint: widget.noteModel.title),
          const SizedBox(height: 16,),
           CustomTextField(
            onChange:(value){
              content=value ;
            },
            hint:  widget.noteModel.subTitle ,
          maxLines: 6,
          ),
          const SizedBox(height: 16,),
           EditNoteColorsList(
             noteModel: widget.noteModel,
           ),
        ],
      ),
    );
  }
   void snackStatus(BuildContext context) {
     if (widget.noteModel.title == title &&
         widget.noteModel.subTitle == content &&
         widget.noteModel.color == newColor) {
       showSnackBar(
         context,
         'The note title , content and color has been edited',
         Colors.green,
       );
     } else if (widget.noteModel.title == title &&
         widget.noteModel.subTitle != content &&
         widget.noteModel.color != newColor) {
       showSnackBar(
         context,
         'The note title only has been edited',
         Colors.green,
       );
     } else if (widget.noteModel.title != title &&
         widget.noteModel.subTitle == content &&
         widget.noteModel.color != newColor) {
       showSnackBar(
         context,
         'The note content only has been edited',
         Colors.green,
       );
     } else if (widget.noteModel.title != title &&
         widget.noteModel.subTitle != content &&
         widget.noteModel.color == newColor) {
       showSnackBar(
         context,
         'The note Color only has been edited',
         Colors.green,
       );
     } else if (widget.noteModel.title == title &&
         widget.noteModel.subTitle == content &&
         widget.noteModel.color != newColor) {
       showSnackBar(
         context,
         'The note title and content  has been edited',
         Colors.green,
       );
     } else if (widget.noteModel.title == title &&
         widget.noteModel.subTitle != content &&
         widget.noteModel.color == newColor) {
       showSnackBar(
         context,
         'The note title and Color only has been edited',
         Colors.green,
       );
     } else if (widget.noteModel.title != title &&
         widget.noteModel.subTitle == content &&
         widget.noteModel.color == newColor) {
       showSnackBar(
         context,
         'The note content and Color only has been edited',
         Colors.green,
       );
     } else {
       showSnackBar(
         context,
         'The note has not been edited',
         Colors.red,
       );
     }
   }
}

