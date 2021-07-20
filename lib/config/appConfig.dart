import 'package:flutter/material.dart';

var colors = {
  'primary': Color(0xFFfc4a1a),
  'appBarBackGround': Color(0xFFfc4a1a),
  'appBarText': Colors.white,
  'bodyText': Colors.black,
  'buttonDefault': Colors.blue,
  'buttonAdd': Colors.green,
  'buttonRemoveBackGround': Colors.red,
  'buttonConfirmBackGround': Colors.green,
  'buttonConfirmText': Colors.black,
  'buttonCancelBackGround': Colors.red,
  'buttonCancelText': Colors.red,
  'snackBarBackGround': Colors.grey[700],
  'snackBarText': Colors.white,
};

configTheme() {
  return ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: colors['primary']),
    ),
  );
}
