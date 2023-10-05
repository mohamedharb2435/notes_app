import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/add_notes_cubit/add_notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.colors}) : super(key: key);
  final bool isActive ;
  final Color colors ;
  @override
  Widget build(BuildContext context) {
    return isActive ?
    CircleAvatar(
     radius: 32,
     backgroundColor: Colors.lightGreen,
     child:  CircleAvatar(
        radius: 28,
        backgroundColor:colors,
      ),
   )
    : CircleAvatar(
      radius: 24,
      backgroundColor: colors,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
int currentIndexColor = 0 ;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  BlocProvider.of<AddNotesCubit>(context).color=kColors[index];
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

