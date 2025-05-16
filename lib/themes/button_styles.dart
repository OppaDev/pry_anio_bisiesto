import 'package:flutter/material.dart';
import 'app_themes.dart';

class ButtonStyles {
  static final ButtonStyle primary = ElevatedButton.styleFrom(
    backgroundColor: AppThemes.primaryBlue,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  static final ButtonStyle secondary = OutlinedButton.styleFrom(
    side: BorderSide(color: AppThemes.primaryBlue, width: 2),
    foregroundColor: AppThemes.primaryBlue,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  static final ButtonStyle accentYellow = ElevatedButton.styleFrom(
    backgroundColor: AppThemes.accentYellow,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  static final ButtonStyle accentOrange = ElevatedButton.styleFrom(
    backgroundColor: AppThemes.accentOrange,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}
