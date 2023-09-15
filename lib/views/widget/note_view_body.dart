import 'package:flutter/cupertino.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child:   Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBa(),
        ],
      ),
    );
  }
}

