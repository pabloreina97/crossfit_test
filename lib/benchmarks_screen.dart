import 'package:flutter/material.dart';

class BenchmarksScreen extends StatelessWidget {
  const BenchmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //TODO: Aquí habría que incluir una lista de ejercicios: sentadilla, peso muerto, etc. Dentro de cada ejercicio, un historial de los pesos levantados en ese ejercicio con número de repes, fecha, etc.
      body: Center(
        child: Text('BenchmarksScreen'),
      ),
    );
  }
}
