import 'package:flutter/cupertino.dart';
import 'package:notes/constants.dart';
import 'package:notes/views/widget/add_note_bottom_sheet.dart';
import 'package:notes/views/widget/custom_bottom.dart';
import 'package:notes/views/widget/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(height: 32),
            CustomTextField(
              hint: 'Title ',
            ),
            SizedBox(height: 16),
            CustomTextField(
              hint: 'content ',
              maxLines: 6,
            ),
            SizedBox(height: 90,),
            CustomButton(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

