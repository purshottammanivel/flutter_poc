import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color.fromARGB(255, 219, 233, 242),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 219, 233, 242),
    iconTheme: const IconThemeData(
      color: Color.fromARGB(250, 0, 102, 140),
    ),
    titleTextStyle: GoogleFonts.ptSans(
      color: const Color.fromARGB(250, 0, 102, 140),
      fontSize: 24,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 0, 102, 140),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 246, 249, 254),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.ptSans(
      color: const Color.fromARGB(255, 0, 102, 140),
      fontSize: 38,
    ),
    headlineMedium: GoogleFonts.ptSans(
      color: const Color.fromARGB(255, 115, 122, 128),
      fontSize: 28,
    ),
    bodyMedium: GoogleFonts.ptSans(
      color: Colors.white,
      fontSize: 18,
    ),
    bodySmall: GoogleFonts.ptSans(
      color: const Color.fromARGB(250, 0, 102, 140),
      fontSize: 16,
    ),
  ),
);

/// Dark Theme

final ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color.fromARGB(255, 219, 233, 242),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 16, 27, 33),
    iconTheme: const IconThemeData(
      color: Color.fromARGB(250, 130, 135, 139),
    ),
    titleTextStyle: GoogleFonts.ptSans(
      color: const Color.fromARGB(250, 130, 135, 139),
      fontSize: 24,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 118, 209, 254),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 9, 14, 17),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.ptSans(
      color: const Color.fromARGB(255, 118, 209, 254),
      fontSize: 38,
    ),
    headlineMedium: GoogleFonts.ptSans(
      color: const Color.fromARGB(255, 115, 122, 128),
      fontSize: 28,
    ),
    bodyMedium: GoogleFonts.ptSans(
      color: Colors.white,
      fontSize: 18,
    ),
    bodySmall: GoogleFonts.ptSans(
      color: const Color.fromARGB(250, 0, 102, 140),
      fontSize: 16,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 118, 209, 254),
      foregroundColor: const Color.fromARGB(255, 0, 52, 73),
    ),
  ),
);
