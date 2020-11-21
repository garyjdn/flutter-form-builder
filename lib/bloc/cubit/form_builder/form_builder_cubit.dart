import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/data.dart';
import '../../../models/models.dart';

part 'form_builder_state.dart';

class FormBuilderCubit extends Cubit<FormBuilderState> {
  final FormBuilderRepository _formBuilderRepository;

  FormBuilderCubit(this._formBuilderRepository) : super(FormBuilderLoadInProgress());

  void fetchData() async {
    try {
      emit(FormBuilderLoadInProgress());
      Form form = await _formBuilderRepository.fetchData();
      emit(FormBuilderLoadSuccess(form: form));
    } on Exception {
      emit(FormBuilderLoadFailure());
    }
  }
}
