import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/views/edit_notes_viewy.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

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
            color: const Color(0xffFFCCB0),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Padding(
                  padding:  EdgeInsets.only(bottom: 18),
                  child:    Text('Flutter Tips' , style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                  ),),
                ),
                subtitle: Text('Build your career with Mohamed Khaled', style:
                TextStyle(
                  color:Colors.black87.withOpacity(.3),
                  fontSize: 16,
                ),),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(
                    FontAwesomeIcons.trash,
                    size: 25,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24,top: 16),
                child: Text('May 22 ,2022',
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