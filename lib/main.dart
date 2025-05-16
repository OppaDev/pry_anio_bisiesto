import 'package:flutter/material.dart';

import 'views/resultado_views.dart';
import 'views/verificar_views.dart';
import 'themes/app_themes.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Anio bisiesto',
      initialRoute: '/',
      routes: {
        '/': (context) => VerificarView(),
        '/resultado': (context) => ResultadoViews(),
      },
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
    ),
  );
}
