import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants/app_hive_box.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<EditNoteState> {
  AddNoteCubit() : super(EditNoteInitial());

  Color color = const Color(0xff06AED5);

  addNote(NoteModel note) async {
    try {
      note.color = color.value;
      emit(AddNoteLoading());
      var noteBox = Hive.box<NoteModel>(AppHiveBox.hiveBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
