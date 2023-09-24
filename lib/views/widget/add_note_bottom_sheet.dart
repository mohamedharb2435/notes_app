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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> fromkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subtitle ;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromkey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children:  [
         const SizedBox(height: 32),
          CustomTextField(
            onSaved:(value){
              title=value ;
            },
            hint: 'Title ',
          ),
         const  SizedBox(height: 16),
          CustomTextField(
            onSaved:(value){
              subtitle=value ;
            },
            hint: 'content ',
            maxLines: 6,
          ),
        const   SizedBox(height: 90,),
          CustomButton(
            onTap: (){
              if(fromkey.currentState!.validate()){
                fromkey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
         const SizedBox(height: 20,),
        ],
      ),
    );
  }
}

