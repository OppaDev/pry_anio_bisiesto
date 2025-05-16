import 'package:flutter/material.dart';
import 'button_styles.dart';
import 'text_style.dart';
import 'contenedor_layouts.dart';
import 'color_schemes.dart';
import 'card_styles.dart';

class AppThemes {
  static const Color primaryBlue = Color(0xFF4A73F8);
  static const Color accentYellow = Color(0xFFFFD143);
  static const Color accentOrange = Color(0xFFFF6F61);
  static const Color accentGreen = Color(0xFF3ECF8E);
  static const Color textDark = Color(0xFF1E1F25);
  static const Color textGrey = Color(0xFF666C80);
  static const Color background = Color.fromARGB(255, 255, 255, 255);
  static const Color surfaceDark = Color(0xFFF5F6FA);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: background,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 32,
        height: 40 / 32,
        fontWeight: FontWeight.w700,
        color: textDark,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 24,
        height: 32 / 24,
        fontWeight: FontWeight.w600,
        color: textDark,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w400,
        color: textDark,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        height: 16 / 12,
        fontWeight: FontWeight.w500,
        color: textGrey,
      ),
    ),
    cardTheme: CardStyles.yearCard,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryBlue,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyles.primary),
    outlinedButtonTheme: OutlinedButtonThemeData(style: ButtonStyles.secondary),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyles.label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ContenedorLayouts.borderRadius),
        borderSide: BorderSide(color: ColorSchemes.primaryBlue),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ContenedorLayouts.borderRadius),
        borderSide: BorderSide(color: ColorSchemes.primaryBlue, width: 2),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: TextStyles.body,
      backgroundColor: ColorSchemes.surfaceDark,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ContenedorLayouts.borderRadius),
      ),
    ),
  );
}
