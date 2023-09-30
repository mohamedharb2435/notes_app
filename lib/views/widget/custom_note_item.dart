import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/edit_notes_viewy.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.noteModel}) : super(key: key);
final NoteModel noteModel ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        },),);
      },
      child: Container(
          padding:const  EdgeInsets.only(top: 24 , bottom: 24 ,left: 16),
          decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Padding(
                  padding: const  EdgeInsets.only(bottom: 18),
                  child:    Text(noteModel.title , style: const  TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                  ),),
                ),
                subtitle: Text(
                  noteModel.subTitle,
                  style: TextStyle(
                  color:Colors.black87.withOpacity(.3),
                  fontSize: 16,
                ),),
                trailing: IconButton(
                  onPressed: (){
                    noteModel.delete();
                  },
                  icon:const Icon(
                    FontAwesomeIcons.trash,
                    size: 25,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24,top: 16),
                child: Text(noteModel.date,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87.withOpacity(.3),
                  ),
                ),
              )
            ],
          )

      ),
    );
  }
}