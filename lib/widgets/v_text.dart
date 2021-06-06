import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:google_fonts/google_fonts.dart';

class VText extends StatelessWidget {
  final bool money;
  final bool number;
  final bool poppins;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final int maxLines;
  final TextAlign align;
  final TextDecoration decoration;
  final TextOverflow overflow;
  final String title;
  final TextStyle style;

  VText(this.title,
      {this.color = Colors.black,
      this.fontSize,
      this.fontWeight,
      this.overflow = TextOverflow.fade,
      this.align,
      this.money = false,
      this.number = false,
      this.poppins = false,
      this.style,
      this.decoration,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    FlutterMoneyFormatter fmf;
    if (number || money) {
      fmf = FlutterMoneyFormatter(
        amount: (title != null && title != "" && title != "null")
            ? double.parse(title)
            : 0.0,
        settings: MoneyFormatterSettings(
          symbol: !number ? 'Rp ' : '',
          thousandSeparator: '.',
          decimalSeparator: '.',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 0,
          compactFormatType: CompactFormatType.short,
        ),
      );
    }
    return Text(
      title != null && title != "null"
          ? money || number
              ? fmf.output.symbolOnLeft
              : title
          : "",
      style: GoogleFonts.montserrat(
        textStyle: style,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
      overflow: overflow,
      textAlign: align,
      maxLines: maxLines,
    );
  }
}
