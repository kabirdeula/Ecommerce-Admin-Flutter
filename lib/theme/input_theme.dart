import 'package:flutter/material.dart';

class InputTheme {
  TextStyle _builtTextStyle(Color color, {double size = 16.0}) {
    return TextStyle(
      color: color,
      fontSize: size,
    );
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: color,
        width: 1.0,
      ),
    );
  }

  InputDecorationTheme theme() => InputDecorationTheme(
        contentPadding: const EdgeInsets.all(16),
        // isDense seems to do nothing if you pass padding in
        // isDense: true,
        // "always" put the label at the top
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // This can be useful for putting TextFields in a row.
        // However, it might be more desirable to wrap with Flexible
        // to make them grow to the available width.
        constraints: const BoxConstraints(minWidth: 150),

        // Borders
        // Enabled and not showing error
        enabledBorder: _buildBorder(Colors.grey),
        // Has error but not focus
        errorBorder: _buildBorder(Colors.red),
        // Has error and focus
        focusedErrorBorder: _buildBorder(Colors.red.shade900),
        // Default value if borders are null
        border: _buildBorder(Colors.yellow),
        // Enabled and focused
        focusedBorder: _buildBorder(Colors.blue),
        // Disabled
        disabledBorder: _buildBorder(Colors.grey[400]!),

        // Text styles
        suffixStyle: _builtTextStyle(Colors.black),
        counterStyle: _builtTextStyle(Colors.grey, size: 12.0),
        floatingLabelStyle: _builtTextStyle(Colors.black),
        // Make error and helper the same size, so that the field
        // does not grow in height when there is an error text.
        errorStyle: _builtTextStyle(Colors.red, size: 12.0),
        helperStyle: _builtTextStyle(Colors.black, size: 12.0),
        hintStyle: _builtTextStyle(Colors.grey),
        labelStyle: _builtTextStyle(Colors.black),
        prefixStyle: _builtTextStyle(Colors.black),
      );
}
