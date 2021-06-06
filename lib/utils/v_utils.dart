import 'package:flutter/material.dart';

class VUtils {
  VUtils._();
  static void hideKeyboard(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
