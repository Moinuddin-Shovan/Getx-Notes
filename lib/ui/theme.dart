import 'package:flutter/material.dart';

const Color blueClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB747);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const Color primaryClr = blueClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeadClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    primaryColor: primaryClr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}
