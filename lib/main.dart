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
import 'package:crossfit_test/benchmark_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Puro Crossfit',
        theme: AppTheme().theme(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        routes: {
          '/clase_detail': (context) => const ClaseDetailScreen(),
          '/clase_detail2': (context) => const ClaseDetailScreen2(),
          '/edit_profile': (context) => const UpdateProfileScreen(),
          '/benchmarks': (context) => const BenchmarksScreen(),
          '/benchmark_detail': (context) => const BenchmarkDetailScreen(),
          '/reservas': (context) => const ReservasScreen(),
          '/profile': (context) => const ProfileScreen(),
          '/ajustes': (context) => const AjustesScreen(),
          '/categoria_tienda': (context) => const CategoriaTiendaScreen(),
          '/proveedor': (context) => const ProveedorScreen(),
        });
  }
}
