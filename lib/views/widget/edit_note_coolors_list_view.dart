import 'package:flutter/cupertino.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widget/colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({Key? key, required this.noteModel}) : super(key: key);
  final NoteModel noteModel ;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}
late  int  currentIndexColor ;
class _EditNoteColorsListState extends State<EditNoteColorsList> {
  @override
  void initState() {
    currentIndexColor=kColors.indexOf(Color(widget.noteModel.color),);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 32*2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context , index){
            return  Padding(
              padding:const    EdgeInsets.symmetric(horizontal: 6),
              child:   GestureDetector(
                onTap: (){
                  currentIndexColor =index ;
                  widget.noteModel.color =kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  colors: kColors[index],
                  isActive: currentIndexColor==index ,
                ),
              ),
            ) ;
          }
      ),
    );
  }
}
