import 'package:flutter/material.dart';

class CustomButtonStyle {
  static ButtonStyle buttonStyle = ButtonStyle(
    // backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    // foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
    padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(16.0)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    elevation: MaterialStateProperty.all(4.0),
    minimumSize: MaterialStateProperty.all<Size>(const Size(200, 50)),
  );
}
