import 'package:flutter/material.dart';
import '../../../ui.dart';
import '../../../../models/models.dart';

class SectionFieldMolecule extends StatefulWidget {
  final FormProperty field;

  SectionFieldMolecule({@required this.field}):
    assert(field != null);

  @override
  _SectionFieldMoleculeState createState() => _SectionFieldMoleculeState();
}

class _SectionFieldMoleculeState extends State<SectionFieldMolecule> {

  FormSection _field;
  bool _isCollapse = true;

  @override
  void initState() {
    super.initState();
    _field = widget.field;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: _isCollapse? EdgeInsets.only(bottom: 30.0) : null,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 120,
                child: Text(_field.fieldName)
              ),

              if(_isCollapse)
              IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  setState(() {
                    _isCollapse = false;
                  });
                },
              ),

              if(!_isCollapse)
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: () {
                  setState(() {
                    _isCollapse = true;
                  });
                },
              ),
            ],
          ),

          if(!_isCollapse)
          Container(
            child: FormBodyOrganism(formFields: _field.formFields),
          )
        ],
      ),
    );
  }
}