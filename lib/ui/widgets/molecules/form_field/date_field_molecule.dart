import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../models/models.dart';

class DateFieldMolecule extends StatefulWidget {
  final FormProperty field;

  DateFieldMolecule({this.field}):
    assert(field != null);

  @override
  _DateFieldMoleculeState createState() => _DateFieldMoleculeState();
}

class _DateFieldMoleculeState extends State<DateFieldMolecule> {
  FormProperty _field;
  TextEditingController _dateCtrl;
  DateTime _selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime _picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if(_picked != null && _picked != _selectedDate) {
      _selectedDate = _picked;
      _dateCtrl.text = DateFormat('dd MMMM yyyy').format(_selectedDate);
    }
  }

  @override
  void initState() {
    super.initState();
    _dateCtrl = TextEditingController(text: DateFormat('dd MMMM yyyy').format(_selectedDate));
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
            child: TextFormField(
              controller: _dateCtrl,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.date_range),
                  onPressed: () => _selectDate(context),
                )
              ),
            )
          )
        ],
      ),
    );
  }
}