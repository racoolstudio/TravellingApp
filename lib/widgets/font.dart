import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Font extends StatelessWidget {
  String text;
  Color color;
  double size;
  Font({Key? key, required this.text, required this.size, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(
          color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
