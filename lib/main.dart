import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/app_hive_box.dart';
import 'package:notes_app/cubits/bloc_opserver.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(AppHiveBox.hiveBox);
  Bloc.observer = MyBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.dark(),

        theme: ThemeData(
          useMaterial3: true,
          //// Define the default brightness and colors.
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            // ···
            brightness: Brightness.dark,
          ),

          //// Define the default `TextTheme`. Use this to specify the default
          //// text styling for headlines, titles, bodies of text, and more.

          textTheme: TextTheme(
            displayLarge: GoogleFonts.poppins(),
            displayMedium: GoogleFonts.poppins(),
            displaySmall: GoogleFonts.poppins(),

            // ···
            titleSmall: GoogleFonts.poppins(),
            titleMedium: GoogleFonts.poppins(),
            titleLarge: GoogleFonts.poppins(),

            // ···
            bodySmall: GoogleFonts.poppins(),
            bodyMedium: GoogleFonts.poppins(),
            bodyLarge: GoogleFonts.poppins(),
          ),
        ),

        home: const NotesView(),
      ),
    );
  }
}
