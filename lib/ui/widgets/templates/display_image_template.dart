import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class DisplayImageTemplate extends StatelessWidget {
  final String imgPath;
  final String fileName;

  DisplayImageTemplate({
    this.imgPath,
    this.fileName
  });

  Future getBytes () async {
    Uint8List bytes = File(imgPath).readAsBytesSync() as Uint8List;
    return ByteData.view(bytes.buffer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.file(File(imgPath),fit: BoxFit.cover,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                height: 60,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Discard')
                    ),

                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).popUntil((route) => route.isFirst);
                      },
                      child: Text('Save'),
                    )
                  ],
                )
              )
            )
          ],
        ),
      )
    );
  }
}