import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, this.isLoading=false}) : super(key: key);
final void Function()? onTap ;
final bool  isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
        ),
        child:  Center(
            child: isLoading?
           const SizedBox(
                height: 24,
                width: 24,
                child:  CircularProgressIndicator(color: Colors.black87,)):
            const Text(
              'Add ' , style: TextStyle(
              color:Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),)
        ),
      ),
    );
  }
}