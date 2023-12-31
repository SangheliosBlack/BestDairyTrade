import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static Color primary = const Color.fromARGB(255, 255, 187, 39);
  static Color primaryLight = const Color.fromRGBO(243, 245, 250, 1);
  static Color primaryTitle = Colors.grey.shade600;
  static Color primaryBody = Colors.grey.shade400;
  static Color secondary = const Color.fromRGBO(103, 192, 68, 1);
  static ThemeData appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        elevation: 0, color: Colors.white, foregroundColor: Colors.grey),
    scaffoldBackgroundColor: Colors.white,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(
          Colors.black), // Color de la barra de desplazamiento
      trackColor: MaterialStateProperty.all(
          Colors.redAccent), // Color del riel de la barra de desplazamiento
    ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.quicksand(
          color: primaryTitle,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
        titleMedium: GoogleFonts.quicksand(
          color: primaryTitle,
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
        titleSmall: GoogleFonts.quicksand(
          color: primaryTitle,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        bodyLarge: GoogleFonts.quicksand(
          color: primaryBody,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        bodyMedium: TextStyle(
            color: primaryBody,
            fontSize: 14,
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis),
        bodySmall: TextStyle(
            color: primaryBody,
            fontSize: 12,
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis)),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      isDense: true,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      fillColor: Colors.grey.withOpacity(.01),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.withOpacity(.1), width: 2)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.withOpacity(.1))),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.withOpacity(.1))),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      errorStyle: GoogleFonts.quicksand(color: Colors.red),
      hintStyle: GoogleFonts.quicksand(color: Colors.grey.withOpacity(.7)),
      labelStyle: GoogleFonts.quicksand(color: Themes.primary, fontSize: 17),
    ),
    iconTheme: IconThemeData(color: primary),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: primary,
      // secondary: secondary,
      // brightness: Brightness.light
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            elevation: 0.5,
            backgroundColor: Themes.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
  );
}
