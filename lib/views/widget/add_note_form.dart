import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widget/add_note_form.dart';
import 'package:notes/views/widget/colors_list_view.dart';
import 'package:notes/views/widget/custom_bottom.dart';
import 'package:notes/views/widget/custom_text_filed.dart';

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

           const ColorsListView(),
          const   SizedBox(height: 40,),
          BlocBuilder<AddNotesCubit ,AddNotesState>
        (
             builder: (context,state) {
               return CustomButton(
                 isLoading: state is AddNotesLoading ? true : false,
                 onTap: () {
                   if (fromkey.currentState!.validate()) {
                     fromkey.currentState!.save();
                     var currentDate = DateTime.now();
                     var formattedDate= DateFormat('dd-mm-yyyy').format(currentDate);
                     var noteModel = NoteModel(
                       title: title!,
                       subTitle: subtitle!,
                       date: formattedDate,
                       color: Colors.blue.value,
                     );
                     BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                   } else {
                     autovalidateMode = AutovalidateMode.always;
                     setState(() {

                     });
                   }
                 },
               );
             },
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}

