import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines=1}) : super(key: key);

final String hint ;
final int  maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:const  TextStyle(
          color: kPrimaryColor,
        ),
        border: BuildBorder(),
        enabledBorder: BuildBorder(kPrimaryColor),
        focusedBorder:BuildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide:const  BorderSide(
          color: Colors.white,
        )
      );
  }
}
