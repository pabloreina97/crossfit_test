import 'package:crossfit_test/app_theme.dart';
import 'package:crossfit_test/clase_detail_screen.dart';
import 'package:crossfit_test/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
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
        routes: {'/clase_detail': (context) => ClaseDetailScreen()});
  }
}
