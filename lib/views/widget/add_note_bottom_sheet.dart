import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/add_notes_cubit.dart';
import 'package:notes/views/widget/add_note_bottom_sheet.dart';
import 'package:notes/views/widget/add_note_form.dart';
import 'package:notes/views/widget/custom_bottom.dart';
import 'package:notes/views/widget/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const  AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit,AddNotesState>(
        listener: (context,state){
          if(state is AddNotesFailure){
            print('Failure  ${state.errorMessage}');
          }
          if(state is AddNotesSuccess){
            Navigator.pop(context);
          }
        },
        builder: (context ,state ){
          return AbsorbPointer(
              absorbing:state is AddNotesLoading ?true :false ,
          child:const  Padding(
            padding:  EdgeInsets.all(8.0),
            child: SingleChildScrollView(child: AddNoteForm(),),
          ),);
        },
      ),
    );
  }
}