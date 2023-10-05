import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({Key? key, required this.iconData, this.onPressed}) : super(key: key);
final IconData iconData ;
  final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color(0xffdc800a).withOpacity(.1),
        borderRadius: BorderRadius.circular(17),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(iconData,size: 28,),
      ),
    );
  }
}