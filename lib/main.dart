import 'package:crossfit_test/ajustes_screen.dart';
import 'package:crossfit_test/categoria_tienda_screen.dart';
import 'package:crossfit_test/clase_detail_screen2.dart';
import 'package:crossfit_test/proveedor_screen.dart';
import 'package:crossfit_test/theme/app_theme.dart';
import 'package:crossfit_test/benchmarks_screen.dart';
import 'package:crossfit_test/clase_detail_screen.dart';
import 'package:crossfit_test/home_screen.dart';
import 'package:crossfit_test/profile_screen.dart';
import 'package:crossfit_test/reservas_screen.dart';
import 'package:crossfit_test/theme/benchmark_detail_screen.dart';
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
        theme: AppTheme().theme(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        routes: {
          '/clase_detail': (context) => ClaseDetailScreen(),
          '/clase_detail2': (context) => ClaseDetailScreen2(),
          '/edit_profile': (context) => UpdateProfileScreen(),
          '/benchmarks': (context) => BenchmarksScreen(),
          '/benchmark_detail': (context) => BenchmarkDetailScreen(),
          '/reservas': (context) => ReservasScreen(),
          '/profile': (context) => ProfileScreen(),
          '/ajustes': (context) => AjustesScreen(),
          '/categoria_tienda': (context) => CategoriaTiendaScreen(),
          '/proveedor': (context) => ProveedorScreen(),
        });
  }
}
