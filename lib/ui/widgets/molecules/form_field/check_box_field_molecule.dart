import 'package:flutter/material.dart';
import '../../../../models/models.dart';

class CheckBoxFieldMolecule extends StatefulWidget {
  final FormProperty field;

  CheckBoxFieldMolecule({@required this.field}):
    assert(field != null);

  @override
  _CheckBoxFieldMoleculeState createState() => _CheckBoxFieldMoleculeState();
}

class _CheckBoxFieldMoleculeState extends State<CheckBoxFieldMolecule> {
  FormProperty _field;

  @override
  void initState() {
    super.initState();
    _field = widget.field;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: [
          Container(
            width: 120,
            child: Text(_field.fieldName)
          ),
          Checkbox(
            value: _field.value,
            onChanged: (value) {
              setState(() => _field.value = value);
            },
          )
        ],
      ),
    );
  }
}