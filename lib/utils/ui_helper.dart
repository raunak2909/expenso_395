import 'package:flutter/material.dart';

class UIHelper {
  static InputDecoration getMyTextFieldDecoration({
    required String labelTxt,
    required String hintTxt,
    required IconData prefixIcon,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pinkAccent),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.purple),
      ),
      labelText: labelTxt,
      hintText: hintTxt,
      prefixIcon: Icon(prefixIcon),
    );
  }
}
