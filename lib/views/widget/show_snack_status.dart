import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void showSnackBar(BuildContext context, String text ,Color backgroundColor ) {
  // ScaffoldMessenger.of(context).showSnackBar(
  //   // SnackBar(
  //   //   content: Center(child: Text(label,
  //   //   style:const  TextStyle(
  //   //       color: Colors.white,
  //   //   ),
  //   //   )),
  //   //   backgroundColor:backgroundColor ,
  //   //   shape: RoundedRectangleBorder(
  //   //     borderRadius: BorderRadius.circular(24),
  //   //     //side: BorderSide(width: 2,color: Colors.white)
  //   //     ),
  //   //   behavior:SnackBarBehavior.floating,
  //   //
  //   // ),
  // );
     Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
     backgroundColor:backgroundColor,
    textColor: Colors.white,
  );
}