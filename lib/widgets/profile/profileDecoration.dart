import 'package:flutter/material.dart';

class ProfileDecoration {
  InputDecoration customDecoration(String hintText, String labelText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(fontSize: 20),
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.lightBlue, fontSize: 18),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.lightBlue,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
