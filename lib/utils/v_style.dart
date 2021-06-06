import 'package:flutter/material.dart';

class VStyle {
  VStyle._();

  static const bodyCorner = 32.0;
  static const itemCorner = 24.0;

  static BoxDecoration boxShadow(
      {color = Colors.white, cornerRadius = 16.0, blurRadius = 16.0}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(cornerRadius),
      boxShadow: [shadow(blurRadius: blurRadius)],
    );
  }

  static shadow({blurRadius = 2.0}) {
    return BoxShadow(blurRadius: blurRadius, color: Color(0xffD6DCE2));
  }

  static BoxDecoration corner({color = Colors.white, radius = 10.0}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
    );
  }

  static BorderRadius sRadius({double radius = 40.0}) {
    return BorderRadius.only(
      topLeft: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    );
  }
}
