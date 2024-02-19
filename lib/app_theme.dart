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
      textTheme: GoogleFonts.antonTextTheme(),
    );
  }
}
