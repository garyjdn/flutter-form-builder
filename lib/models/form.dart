import './models.dart';

class Form {
  String name;
  List<FormProperty> formProperties = [];

  Form({this.formProperties});

  factory Form.fromJson(Map<String, dynamic> json) {
    Form _form = Form(formProperties: []);
    FormSection _formSection;
    bool _section = false;
    _form.name = json['name'];
    for(int i = 0; i < json['user_form_fields'].length; i++) {
      var formField = json['user_form_fields'][i];
      if(formField['is_start_section'] != null && formField['is_start_section']) {
        _section = true;
        _formSection = FormSection(
          fieldType: formField['field_type'],
          fieldName: formField['field_name'],
          formFields: []
        );
      } else if(formField['is_end_section'] != null && formField['is_end_section']) {
        _section = false;
        _form.formProperties.add(_formSection);
      }

      if(formField['field_type'] != 'section') {
        if(_section) {
          _formSection.formFields.add(FormField.fromJson(formField));
        } else {
          _form.formProperties.add(FormField.fromJson(formField));
        }
      }
    }

    return _form;
  }
}