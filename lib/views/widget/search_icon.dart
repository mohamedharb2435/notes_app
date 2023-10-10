import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widget/custom_note_item.dart';

class SearchResultsBody extends StatelessWidget {
  const SearchResultsBody({Key? key, required this.query}) : super(key: key);
  final String query;

  @override
  Widget build(BuildContext context) {
    List<NoteModel>? notesResult = query.isEmpty
        ? BlocProvider.of<NotesCubit>(context).notes
        : BlocProvider.of<NotesCubit>(context)
        .notes!
        .where(
            (e) => e.title.startsWith(query) || e.subTitle.startsWith(query))
        .toList();
    return BlocConsumer<NotesCubit, NotesState>(
      listener: (context, state) {
        if (state is UpdateNotesStates) {
          notesResult = query.isEmpty
              ? BlocProvider.of<NotesCubit>(context).notes
              : BlocProvider.of<NotesCubit>(context)
              .notes!
              .where((e) =>
          e.title.startsWith(query) || e.subTitle.startsWith(query))
              .toList();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Expanded(
                  child: notesResult!.isEmpty
                      ? const Center(
                    child: Text(
                      'No Results',
                    ),
                  )
                      : ListView.builder(
                      itemCount: notesResult!.length,
                      itemBuilder: (context, index) {
                        return NoteItem(noteModel: notesResult![index]);
                      })),
            ],
          ),
        );
      },
    );
  }
}
