import 'package:flutter/material.dart';
import 'contenedor_layouts.dart';
import 'color_schemes.dart';

class CardStyles {
  static final CardTheme yearCard = CardTheme(
    color: ColorSchemes.background,
    shadowColor: Colors.black26,
    elevation: 4,
    margin: EdgeInsets.symmetric(vertical: ContenedorLayouts.baseSpacing * 2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(ContenedorLayouts.borderRadius),
      side: BorderSide(color: ColorSchemes.primaryBlue, width: 1),
    ),
  );
}
