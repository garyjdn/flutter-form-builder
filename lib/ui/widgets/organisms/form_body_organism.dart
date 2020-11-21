import 'package:flutter/material.dart';
import '../../ui.dart';
import '../../../models/models.dart';

class FormBodyOrganism extends StatelessWidget {
  final List<FormProperty> formFields;

  FormBodyOrganism({this.formFields});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: formFields.map((dynamic field) {
          switch (field.fieldType) {
            case 'date': {
              return DateFieldMolecule(field: field);
            }
            break;

            case 'hyperlink': {
              return HyperlinkFieldMolecule(field: field);
            }
            break;

            case 'camera': {
              return CameraFieldMolecule(field: field);
            }
            break;

            case 'section': {
              return SectionFieldMolecule(field: field);
            }
            break;

            case 'image': {
              return ImageFieldMolecule(field: field);
            }
            break;

            case 'checkbox': {
              return CheckBoxFieldMolecule(field: field);
            }
            break;

            case 'dropdown': {
              return DropdownFieldMolecule(field: field);
            }
            break;

            case 'free_text': {
              return TextFormFieldMolecule(field: field);
            }
            break;

            default: {
              return Container();
            }
          }
        }).toList(),
      ),
    );
  }
}