import 'package:flutter/material.dart';

class BenchmarkDetailScreen extends StatelessWidget {
  const BenchmarkDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text(title.toUpperCase())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('19/02/2024'),
            subtitle: const Text('3 x 5 reps'),
            trailing: Text(
              '50 kg',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () => Navigator.of(context).pushNamed('/benchmark_detail'),
          ),
          ListTile(
            title: const Text('19/02/2024'),
            subtitle: const Text('3 x 5 reps'),
            trailing: Text(
              '70 kg',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () => Navigator.of(context).pushNamed('/benchmark_detail'),
          ),
          ListTile(
            title: const Text('01/02/2024'),
            subtitle: const Text('3 x 5 reps'),
            trailing: Text(
              '60 kg',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () => Navigator.of(context).pushNamed('/benchmark_detail'),
          ),
          ListTile(
            title: const Text('24/01/2024'),
            subtitle: const Text('3 x 5 reps'),
            trailing: Text(
              '60 kg',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () => Navigator.of(context).pushNamed('/benchmark_detail'),
          ),
          ListTile(
            title: const Text('02/01/2024'),
            subtitle: const Text('3 x 5 reps'),
            trailing: Text(
              '55 kg',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () => Navigator.of(context).pushNamed('/benchmark_detail'),
          ),
        ],
      ),
    );
  }
}
