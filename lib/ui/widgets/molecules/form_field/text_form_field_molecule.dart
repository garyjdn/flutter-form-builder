import 'package:flutter/material.dart';
import '../../../../models/models.dart';

class TextFormFieldMolecule extends StatefulWidget {
  final FormProperty field;

  TextFormFieldMolecule({@required this.field}):
    assert(field != null);

  @override
  _TextFormFieldMoleculeState createState() => _TextFormFieldMoleculeState();
}

class _TextFormFieldMoleculeState extends State<TextFormFieldMolecule> {
  FormProperty _field;
  TextEditingController textEditingCtrl;

  @override
  void initState() {
    super.initState();
    _field = widget.field;
    textEditingCtrl = TextEditingController(text: _field.value);
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
          Flexible(
            child: TextFormField(
              controller: textEditingCtrl
            ),
          )
        ],
      ),
    );
  }
}