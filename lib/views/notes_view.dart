import 'package:flutter/material.dart';
import 'package:notes_app/helper/show_modal_bottom_sheet.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_floating_action_button.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          showMyModalBottomSheet(
            context: context,
            child: const AddNoteBottomSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
