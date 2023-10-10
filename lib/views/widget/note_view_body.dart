import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/views/search_delegate_view.dart';
import 'package:notes/views/widget/notes_list_view.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return   Padding(
      padding: const   EdgeInsets.symmetric(horizontal: 24),
      child:   Column(
        children: [
          const SizedBox(height: 40,),
          CustomAppBar(
            title: 'Notes',
            iconData: Icons.search,
            onPressed: (){
              showSearch(
                    context: context,
                  delegate:  SearchDelegateView(),
              );
            },
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}


