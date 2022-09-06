import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TheFonts {
  static TextStyle main({
    TextStyle? textStyle,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    TextDecoration? decoration,
  }) =>
      GoogleFonts.ubuntu(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        height: height,
        decoration: decoration,
      );

  static TextStyle title(BuildContext context) => main(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
}
