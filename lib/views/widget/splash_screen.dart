import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/notes_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen ({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 6), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder:(context){
            return const  NotesView();
          }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xffcecece),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Notes',
                    textStyle:const  TextStyle(
                        color: Color(0xff002b31),
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    )),
              ],
              repeatForever: true,
              onTap: () {
                // print("Tap Event");
              },
            ),

          ),
        ],
      ),
    );
  }
}