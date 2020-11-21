import './models.dart';

class FormSection implements FormProperty {
  String fieldType;
  String fieldName;
  List<FormField> formFields = [];
  dynamic value;

  FormSection({
    this.fieldType,
    this.fieldName,
    this.formFields,
  });

}