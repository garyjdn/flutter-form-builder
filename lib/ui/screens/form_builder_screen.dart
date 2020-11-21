import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../ui.dart';
import '../../bloc/bloc.dart';
import '../../data/data.dart';

class FormBuilderScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext ctx) => FormBuilderCubit(FormBuilderRepository())..fetchData(),
      child: FormBuilderTemplate(),
    );
  }
}