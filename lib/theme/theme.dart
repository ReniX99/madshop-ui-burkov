import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/theme/colors.dart';

final theme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
  ),
  textTheme: TextTheme(
    titleLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: AppColors.primary,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    filled: true,
    fillColor: Color(0xFFF8F8F8),
    floatingLabelStyle: TextStyle(color: Color(0xFFD2D2D2)),
    floatingLabelBehavior: FloatingLabelBehavior.never,
    labelStyle: TextStyle(color: Color(0xFFD2D2D2)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(60),
      borderSide: BorderSide.none,
    ),
  ),
);
