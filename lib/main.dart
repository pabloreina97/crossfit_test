import 'package:crossfit_test/ajustes_screen.dart';
import 'package:crossfit_test/app_theme.dart';
import 'package:crossfit_test/benchmarks_screen.dart';
import 'package:crossfit_test/clase_detail_screen.dart';
import 'package:crossfit_test/home_screen.dart';
import 'package:crossfit_test/profile_screen.dart';
import 'package:crossfit_test/reservas_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Puro Crossfit',
        theme: AppTheme(selectedColor: 1).theme(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        routes: {
          '/clase_detail': (context) => ClaseDetailScreen(),
          '/edit_profile': (context) => UpdateProfileScreen(),
          '/benchmarks': (context) => BenchmarksScreen(),
          '/reservas': (context) => ReservasScreen(),
          '/profile': (context) => ProfileScreen(),
          '/ajustes': (context) => AjustesScreen(),
        });
  }
}
