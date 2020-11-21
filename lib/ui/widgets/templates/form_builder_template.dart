import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/ui/widgets/widgets.dart';
import '../../../bloc/bloc.dart';
import '../../../models/models.dart';


class FormBuilderTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormBuilderCubit, FormBuilderState>(
      builder: (context, state) {
        if(state is FormBuilderLoadInProgress) {
          return Scaffold(
            appBar: FormAppBarOrganism(title: 'Loading..'),
            body: Center(child: CircularProgressIndicator()),
          );
        } else if(state is FormBuilderLoadSuccess) {
          return Scaffold(
            appBar: FormAppBarOrganism(title: state.form.name),
            body: SingleChildScrollView(
              child: FormBodyOrganism(formFields: state.form.formProperties)
            )
          );
        } else {
          return Container();
        }
      }
    );
  }
}