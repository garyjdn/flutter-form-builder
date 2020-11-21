import 'package:flutter/material.dart';
import './models.dart';

class FormField implements FormProperty {
  String fieldType;
  String fieldName;
  dynamic value;

  FormField({
    @required this.fieldType,
    this.fieldName,
    this.value,
  }):
    assert(fieldType != null);

  factory FormField.fromJson(Map<String, dynamic> json) {
    FormField _formField = FormField(
      fieldType: json['field_type'],
      fieldName: json['field_name'],
    );

    switch (_formField.fieldType) {
      case 'checkbox': {
        _formField.value = json['details']['is_ticked'];
      }
      break;

      case 'dropdown': {
        _formField.value = json['details']['accepted_value'];
      }
      break;

      case 'image': {
        _formField.value = "https://ichef.bbci.co.uk/news/1024/cpsprodpb/151AB/production/_111434468_gettyimages-1143489763.jpg";
      }
      break;

      case 'hyperlink': {
        _formField.value = "Lorem Ipsum";
      }
      break;
    }

    return _formField;
  }
}