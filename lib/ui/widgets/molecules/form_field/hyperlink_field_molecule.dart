import 'package:flutter/material.dart';
import '../../../../models/models.dart';

class HyperlinkFieldMolecule extends StatefulWidget {
  final FormProperty field;

  HyperlinkFieldMolecule({@required this.field}):
    assert(field != null);

  @override
  _HyperlinkFieldMoleculeState createState() => _HyperlinkFieldMoleculeState();
}

class _HyperlinkFieldMoleculeState extends State<HyperlinkFieldMolecule> {
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
          Expanded(
            child: Text(
              _field.value,
              style: TextStyle(
                color: Colors.blue[700],
              )
            )
          )
        ],
      ),
    );
  }
}