import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.amber,
  Colors.red,
  Colors.teal,
  Colors.green,
  Colors.amber,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length,
            'El color debe estar entre 0 y ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light,
      textTheme: TextTheme(
          displayLarge: GoogleFonts.anton(),
          displayMedium: GoogleFonts.anton(),
          displaySmall: GoogleFonts.anton(),
          titleLarge: GoogleFonts.anton(), // Appbar title
          titleMedium: GoogleFonts.anton(),
          titleSmall: GoogleFonts.anton()
          // Define más estilos de texto según tus necesidades
          ),
    );
  }
}

class TextStyles {
  static const TextStyle displayLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Anton', // Cambia 'Roboto' por la fuente que desees
  );

  static const TextStyle displayMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
  );
  static const TextStyle displaySmall = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle headlineLarge = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle headlineMedium = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle headlineSmall = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle titleLarge = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle titleMedium = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle titleSmall = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle bodyLarge = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle bodyMedium = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle bodySmall = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle labelLarge = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle labelMedium = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  static const TextStyle labelSmall = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'Roboto');
  // Define más estilos de texto según tus necesidades
}
