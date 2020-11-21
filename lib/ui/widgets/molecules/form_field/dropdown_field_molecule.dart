import 'package:flutter/material.dart';
import '../../../../models/models.dart';

class DropdownFieldMolecule extends StatefulWidget {
  final FormProperty field;

  DropdownFieldMolecule({@required this.field}):
    assert(field != null);

  @override
  _DropdownFieldMoleculeState createState() => _DropdownFieldMoleculeState();
}

class _DropdownFieldMoleculeState extends State<DropdownFieldMolecule> {
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

          DropdownButton<String>(
            value: _field.value,
            items: <String>[_field.value].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ],
      ),
    );
  }
}