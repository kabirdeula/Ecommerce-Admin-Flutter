import 'package:flutter/material.dart';

Widget textField(String label, TextEditingController controller,
    TextInputType textInputType) {
  return Column(
    children: [
      TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          border: const OutlineInputBorder(),
          hintText: 'Enter $label of product',
        ),
        keyboardType: textInputType,
      ),
      const SizedBox(
        height: 16.0,
      )
    ],
  );
}
