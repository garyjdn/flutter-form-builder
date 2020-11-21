import 'package:dio/dio.dart';
import '../../../models/models.dart';

class FormBuilderRest {
  Dio _dio;

  FormBuilderRest(this._dio);

  Future<dynamic> createData() {

  }

  Future<Form> readData() async {
    Response response = await _dio.get('https://go-form-builder.herokuapp.com/form-builder');
    var responseData = response.data;
    Form form = Form.fromJson(responseData['data']);
    return form;
  }

  Future<dynamic> updateData() {

  }

  Future<dynamic> deleteData() {

  }
}