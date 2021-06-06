import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gresikdevweb/utils/v_color.dart';

class VFormField extends StatelessWidget {
  final String label;
  final Widget suffixIcon;
  final TextEditingController controller;
  final Function validator;
  final Function onSaved;
  final bool obscure;

  VFormField(
      {this.label,
      this.suffixIcon,
      this.controller,
      this.validator,
      this.obscure = false,
      this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      style: GoogleFonts.montserrat(),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
      onSaved: onSaved,
    );
  }
}

class VSearchField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  VSearchField({this.label, this.controller});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.montserrat(),
        decoration: InputDecoration(
          fillColor: Colors.deepPurple[100],
          filled: true,
          labelText: label,
          prefixIcon: Icon(Icons.search, color: VColor.primary),
        ),
      ),
    );
  }
}
