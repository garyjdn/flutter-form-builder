import 'dart:io';

import 'package:flutter/material.dart';
import '../../../ui.dart';
import '../../../../models/models.dart';

class CameraFieldMolecule extends StatefulWidget {
  final FormProperty field;

  CameraFieldMolecule({@required this.field}):
    assert(field != null);

  @override
  _CameraFieldMoleculeState createState() => _CameraFieldMoleculeState();
}

class _CameraFieldMoleculeState extends State<CameraFieldMolecule> {
  FormProperty _field;
  String imagePath;

  _takePicture() async {
    String image = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CameraScreen(),
      ),
    );
    
    if(image != null)  
    setState(() => imagePath = image);
  }

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
            child: Text(_field.fieldName ?? '')
          ),

          if(imagePath == null)
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: _takePicture,
          ),

          if(imagePath != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width:150,
              height: 150,
              child: GestureDetector(
                child: Image.file(File(imagePath),fit: BoxFit.cover,),
                onTap: _takePicture,
              )
            ),
          )
        ],
      ),
    );
  }
}