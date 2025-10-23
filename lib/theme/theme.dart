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
);
