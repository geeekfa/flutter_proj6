import 'package:flutter/material.dart';

class TDialog {
  BuildContext _context;
  TDialog(BuildContext context) {
    this._context = context;
  }

  void show(String title, String content) {
    showDialog(
      context: _context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: new Text(content),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
