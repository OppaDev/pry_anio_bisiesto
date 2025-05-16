import 'package:flutter/material.dart';

class ContenedorLayouts {
  static const double baseSpacing = 4.0;
  static const double gutterHorizontal = 16.0;
  static const double containerPaddingMain = 24.0;
  static const double containerPaddingCard = 16.0;
  static const double borderRadius = 12.0;

  static EdgeInsets get mainScreenPadding =>
      const EdgeInsets.symmetric(horizontal: containerPaddingMain);
  static EdgeInsets get cardPadding =>
      const EdgeInsets.all(containerPaddingCard);
}
