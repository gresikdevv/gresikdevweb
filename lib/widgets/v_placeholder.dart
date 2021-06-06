import 'package:flutter/material.dart';
import 'package:gresikdevweb/utils/v_color.dart';

import 'v_text.dart';

class VEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularProgressIndicator(),
        VText("Your have no saved birthday", color: VColor.soft),
      ],
    );
  }
}
