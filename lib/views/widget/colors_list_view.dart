import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.colors}) : super(key: key);
  final bool isActive ;
  final Color colors ;
  @override
  Widget build(BuildContext context) {
    return isActive ?
    CircleAvatar(
     radius: 32,
     backgroundColor: Colors.white,
     child:  CircleAvatar(
        radius: 28,
        backgroundColor:colors,
      ),
   )
    : CircleAvatar(
      radius: 32,
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
List<Color>  colors =const [
  Color(0xff979DAC),
  Color(0xff7D8597),
  Color(0xff5C677D),
  Color(0xff33415C),
  Color(0xff001233),
  Color(0xff001845),
  Color(0xff580C1F),
  Color(0xffd8f3dc),
  Color(0xff40916c),
  Color(0xffFFAA00),
  Color(0xffFF7B00),
];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32*2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context , index){
            return  Padding(
              padding:const    EdgeInsets.symmetric(horizontal: 6),
              child:   GestureDetector(
                onTap: (){
                  currentIndexColor =index ;
                  setState(() {});
                   },
                child: ColorItem(
                  colors: colors[index],
                  isActive: currentIndexColor==index ,
                ),
              ),
            ) ;
          }
      ),
    );
  }
}

