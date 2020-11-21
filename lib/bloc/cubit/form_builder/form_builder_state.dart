part of 'form_builder_cubit.dart';

abstract class FormBuilderState extends Equatable {
  const FormBuilderState();

  @override
  List<Object> get props => [];
}

class FormBuilderLoadInProgress extends FormBuilderState {}

class FormBuilderLoadSuccess extends FormBuilderState{
  final Form form;

  FormBuilderLoadSuccess({this.form});
}

class FormBuilderLoadFailure extends FormBuilderState{}