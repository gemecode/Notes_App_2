import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';

class EditNoteCubit extends Cubit<EditNoteState> {
  EditNoteCubit() : super(EditNoteInitial());

  late Color color;

  // addNote(NoteModel note) async {
  //   try {
  //     note.color = color.value;
  //     emit(AddNoteLoading());
  //     var noteBox = Hive.box<NoteModel>(AppHiveBox.hiveBox);
  //     await noteBox.add(note);
  //     emit(AddNoteSuccess());
  //   } catch (e) {
  //     emit(AddNoteFailure(e.toString()));
  //   }
  // }
}
