import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class VDate {
  VDate._();

  static String standard = "d MMMM yyyy";

  static String dateToString(DateTime time) {
    if (time == null) return "";
    var formatter = DateFormat(standard);
    String formatted = formatter.format(time);
    return formatted;
  }

  static Future<DateTime> pickDate(BuildContext context) async {
    return await DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(1950),
      maxTime: DateTime(2100),
      onConfirm: (date) {
        return date;
      },
      onCancel: () => null,
      currentTime: DateTime.now(),
    );
    /* final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime(1995),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(primary: VColor.accent),
            dialogBackgroundColor: Colors.white,
          ),
          child: child,
        );
      },
    );
    return picked;*/
  }

  static String getAge(DateTime time) {
    if (time == null) return "";
    DateTime now = DateTime.now();
    int age = now.difference(time).inDays ~/ 365.floor();
    return "($age)";
  }
}
