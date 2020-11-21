import 'package:flutter/material.dart';
import '../../ui/ui.dart';

class DisplayImageScreen extends StatelessWidget {
  final String imgPath;
  final String fileName;

  DisplayImageScreen({
    this.imgPath,
    this.fileName
  });

  @override
  Widget build(BuildContext context) {
    return DisplayImageTemplate(
      imgPath: imgPath,
      fileName: fileName,
    );
  }
}
