abstract class EditNoteState {}

class EditNoteInitial extends EditNoteState {}

class AddNoteLoading extends EditNoteState {}

class AddNoteSuccess extends EditNoteState {}

class AddNoteFailure extends EditNoteState {
  final String errMesage;
  AddNoteFailure(this.errMesage);
}
