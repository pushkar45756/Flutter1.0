import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
      primarySwatch: Colors.green,
      brightness: Brightness.dark,
      accentColor: Colors.red);
}

ThemeData lightTheme() {
  return ThemeData(
      primarySwatch: Colors.green,
      brightness: Brightness.light,
      accentColor: Colors.red);
}

void showSnackBar(BuildContext context, String message, String actionNme) {
  var snackBar = SnackBar(
    content: Text(message),
    action: SnackBarAction(
      label: actionNme,
      onPressed: () {

      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
