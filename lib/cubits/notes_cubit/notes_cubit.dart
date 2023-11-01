import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants/app_hive_box.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  featchAllNotes() {
    var noteBox = Hive.box<NoteModel>(AppHiveBox.hiveBox);
    notes = noteBox.values.toList();
    emit(NotesSuccess());
  }
}
