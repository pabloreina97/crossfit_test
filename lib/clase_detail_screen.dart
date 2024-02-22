import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClaseDetailScreen extends StatefulWidget {
  const ClaseDetailScreen({super.key});

  @override
  State<ClaseDetailScreen> createState() => _ClaseDetailScreenState();
}

class _ClaseDetailScreenState extends State<ClaseDetailScreen> {
  late ScrollController _scrollController;
  bool lastStatus = true;

  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  bool get isShrink {
    debugPrint((_scrollController.hasClients && _scrollController.offset > (200 - kToolbarHeight)).toString());
    return _scrollController.hasClients && _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 180,
                foregroundColor: isShrink ? Colors.black : Colors.white,
                title: const Text('CROSSFIT'),
                centerTitle: true,
                backgroundColor: Colors.white,
                scrolledUnderElevation: 0,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/cf.webp',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Bloque(letra: 'A', title: 'Emom 17\''),
                    const Bloque(letra: 'B', title: 'Amrap 12\''),
                    const Bloque(letra: 'C', title: 'For Time'),
                    const Bloque(letra: 'D', title: 'Amrap 12\''),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    padding: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(double.infinity, 0),
                  ),
                  child: Text(
                    'RESERVAR',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Theme.of(context).colorScheme.onSecondary),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Bloque extends StatelessWidget {
  const Bloque({super.key, required this.letra, required this.title});

  final String letra;
  final String title;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$letra: $title".toUpperCase(),
              style: textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            const Ejercicio(
              title: '1 power clean + 1 front squat',
              type: 'tiempo',
              valor: '0 a 7 min',
            ),
            const SizedBox(height: 10),
            const Ejercicio(
              title: '10 burpees over the bar',
              type: 'repeticiones',
              valor: '20/18/16/14/12',
            ),
            const SizedBox(height: 10),
            const Ejercicio(
              title: '10 power clean',
              type: 'distancia',
              valor: '10 m',
            ),
            const SizedBox(height: 10),
            const Ejercicio(
              title: '10 power clean',
              type: 'calorias',
              valor: '300 cal',
            ),
          ],
        ),
      ),
    );
  }
}

class Ejercicio extends StatelessWidget {
  const Ejercicio({
    super.key,
    required this.title,
    required this.type,
    required this.valor,
  });

  final String title;
  final String type;
  final String valor;

  IconData _getIconForType(String type) {
    switch (type) {
      case 'tiempo':
        return Icons.timer_outlined;
      case 'calorias':
        return Icons.local_fire_department_outlined;
      case 'distancia':
        return Icons.route_outlined;
      case 'repeticiones':
        return Icons.repeat_outlined;
      default:
        return Icons.error;
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: Icon(
            _getIconForType(type),
            size: 32,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, overflow: TextOverflow.ellipsis, maxLines: 2, style: textTheme.bodyLarge),
                Text(
                  valor,
                  style: textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
