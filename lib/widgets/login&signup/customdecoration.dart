import 'package:flutter/material.dart';

class CustomDecoration {
  InputDecoration customDecoration(
    String labelingText,
    String text,
  ) {
    return InputDecoration(
      labelText: labelingText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelStyle: TextStyle(color: Colors.lightBlue),
      hintText: text,
      hintStyle: const TextStyle(
        fontSize: 20,
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.lightBlue,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.lightBlue,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
    );
  }
}
