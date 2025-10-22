import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
  ),
  textTheme: TextTheme(
    titleLarge: GoogleFonts.raleway(
      textStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
    ),
  ),
);
