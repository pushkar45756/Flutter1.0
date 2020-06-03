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
