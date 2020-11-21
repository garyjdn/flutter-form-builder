import 'package:flutter/material.dart';

class FormAppBarOrganism extends StatelessWidget with PreferredSizeWidget {
  final String title;

  FormAppBarOrganism({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back),
      title: Text(title ?? ''),
      actions: [
        IconButton(icon: Icon(Icons.check), onPressed: () {})
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}