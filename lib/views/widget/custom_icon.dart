import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Color(0x57efe7e4).withOpacity(.1),
        borderRadius: BorderRadius.circular(17),
      ),
      child:const Center(
        child: Icon(Icons.search,size: 28,),
      ),
    );
  }
}