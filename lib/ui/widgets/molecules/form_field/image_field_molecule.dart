import 'package:flutter/material.dart';
import '../../../../models/models.dart';

class ImageFieldMolecule extends StatefulWidget {
  final FormProperty field;

  ImageFieldMolecule({this.field}):
    assert(field != null);

  @override
  _ImageFieldMoleculeState createState() => _ImageFieldMoleculeState();
}

class _ImageFieldMoleculeState extends State<ImageFieldMolecule> {
  FormProperty _field;

  @override
  void initState() {
    super.initState();
    _field = widget.field;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            width: 120,
            child: Text(_field.fieldName)
          ),
          Expanded(
            child: Image.network(
              _field.value,
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                if (loadingProgress == null)
                  return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                        : null,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}