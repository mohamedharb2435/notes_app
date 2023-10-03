import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.iconData, this.onPressed}) : super(key: key);
final String title ;
final IconData iconData ;
final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return  Row(
     children: [
       Text( title
          ,
         style: const TextStyle(
          fontSize: 26,
           fontWeight:FontWeight.w400
       ),),
       const Spacer(),
       CustomIconSearch(
         onPressed: onPressed,
         iconData:iconData ,
       ),
     ],
    );
  }
}

