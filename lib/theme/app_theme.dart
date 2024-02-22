import 'package:crossfit_test/theme/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      colorScheme: lightColorScheme,
      useMaterial3: true,
      brightness: Brightness.light,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.oswald(fontWeight: FontWeight.w500),
        displayMedium: GoogleFonts.oswald(fontWeight: FontWeight.w500),
        displaySmall: GoogleFonts.oswald(fontWeight: FontWeight.w500, fontSize: 24),
        headlineLarge: GoogleFonts.oswald(fontWeight: FontWeight.w500),
        headlineMedium: GoogleFonts.oswald(fontWeight: FontWeight.w500),
        headlineSmall: GoogleFonts.oswald(fontWeight: FontWeight.w500),
        titleLarge: GoogleFonts.oswald(fontWeight: FontWeight.w500, fontSize: 24), // Appbar title
        titleMedium: GoogleFonts.oswald(fontWeight: FontWeight.w500), // Card header
        titleSmall: GoogleFonts.oswald(fontWeight: FontWeight.w500),
        bodyLarge: GoogleFonts.roboto(),
        bodyMedium: GoogleFonts.roboto(), // Card subheader
        bodySmall: GoogleFonts.roboto(),
        labelLarge: GoogleFonts.roboto(), // Expanded button label
        labelMedium: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 16),
        labelSmall: GoogleFonts.roboto(),
        // Define más estilos de texto según tus necesidades
      ),
    );
  }
}
