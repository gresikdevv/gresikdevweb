
import 'package:flutter/material.dart';
import 'package:gresikdevweb/utils/v_style.dart';

import 'v_text.dart';

class VButton extends StatelessWidget {
  final String text;
  final Function onTap;

  VButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44.0,
        width: double.infinity,
        decoration: VStyle.corner(color: Colors.orange),
        alignment: Alignment.center,
        child: VText(text, color: Colors.white),
      ),
    );
  }
}
