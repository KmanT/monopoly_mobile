import 'package:flutter/material.dart';

class MainThemeData {
  static final ThemeData _mainThemeData = ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Color.fromRGBO(0, 101, 164, 1.0),
    accentColor: Color.fromRGBO(102, 196, 255, 1.0),
    buttonColor: Color.fromRGBO(0, 101, 164, 1.0),
    fontFamily: 'OpenSans'
  );

  static ThemeData getThemeData() {
    return _mainThemeData;
  }
}