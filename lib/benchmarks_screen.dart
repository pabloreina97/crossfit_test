import 'package:flutter/material.dart';

class BenchmarksScreen extends StatelessWidget {
  const BenchmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BenchmarkTile(title: 'Back squat'),
          BenchmarkTile(title: 'Front squat'),
          BenchmarkTile(title: 'Power clean'),
          BenchmarkTile(title: 'Power snatch'),
          BenchmarkTile(title: 'Split jerk'),
          BenchmarkTile(title: 'Push jerk'),
          BenchmarkTile(title: 'Thruster'),
          BenchmarkTile(title: 'Deadlift'),
        ],
      ),
    );
  }
}

class BenchmarkTile extends StatelessWidget {
  final String title;

  const BenchmarkTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.headlineSmall),
      onTap: () => Navigator.of(context).pushNamed('/benchmark_detail', arguments: title),
    );
  }
}
