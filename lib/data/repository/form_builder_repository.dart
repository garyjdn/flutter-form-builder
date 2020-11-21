import 'package:dio/dio.dart';

import '../data.dart';
import '../../models/models.dart';

class FormBuilderRepository {
  Future<Form> fetchData() async {
    Dio _dio = Dio();

    FormBuilderRest formBuilderRest = FormBuilderRest(_dio);

    Form form = await formBuilderRest.readData();
    return form;
  }
}