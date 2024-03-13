import 'package:flutter/material.dart';

class ClaseDetailScreen2 extends StatefulWidget {
  const ClaseDetailScreen2({super.key});

  @override
  State<ClaseDetailScreen2> createState() => _ClaseDetailScreenState();
}

class _ClaseDetailScreenState extends State<ClaseDetailScreen2> {
  double _expansionPercentage = 1.0;
  final ScrollController _scrollController = ScrollController();
  Color appBarTitleColor = Colors.white;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateExpansionPercentage);
  }

  void _updateExpansionPercentage() {
    setState(() {
      _expansionPercentage = 1.0 - (_scrollController.offset / (180 - kToolbarHeight)).clamp(0.0, 1.0);
      _changeAppBarTitleColor(context, _expansionPercentage);
    });
  }

  void _changeAppBarTitleColor(BuildContext context, double expansionPercentage) {
    Color color1 = Theme.of(context).colorScheme.onSurface;
    Color color2 = Colors.white;

    if (expansionPercentage > 0.4) {
      expansionPercentage = 1;
    } else {
      expansionPercentage = (expansionPercentage) / 0.4;
    }

    setState(() {
      appBarTitleColor = Color.lerp(color1, color2, expansionPercentage)!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 180,
            foregroundColor: appBarTitleColor,
            title: Text(args['title'] as String),
            centerTitle: true,
            scrolledUnderElevation: 0,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: args['id'],
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1),
                    BlendMode.luminosity,
                  ),
                  child: Image.asset(
                    'assets/images/${args['title']}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    'INSCRITOS',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (1).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (2).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (3).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (4).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (5).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (6).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (7).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (8).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (9).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (10).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (11).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (12).jpg"),
                        AvatarScrollItem(pathImage: "assets/images/avatar/avatar (13).jpg"),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    'WOD',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const Bloque(letra: 'A', title: 'Back squat', children: [
                  Ejercicio(
                    title: 'Back squat',
                    type: 'repeticiones',
                    valor: '5x55% - 5x65% - 4x75% - 2x3x85% - 2x1x95%',
                  )
                ]),
                const Bloque(letra: 'B', title: 'Hang squat snatch', children: [
                  Ejercicio(
                    title: 'Hang squat snatch',
                    type: 'repeticiones',
                    valor: '2x5x85%',
                  )
                ]),
                const Bloque(letra: 'C', title: 'Wod. 5 rounds for quality', children: [
                  Ejercicio(
                    title: 'DB Snatch',
                    type: 'repeticiones',
                    valor: '16 reps',
                  ),
                  SizedBox(height: 10),
                  Ejercicio(
                    title: 'Toes to bar',
                    type: 'repeticiones',
                    valor: '14 reps',
                  ),
                  SizedBox(height: 10),
                  Ejercicio(
                    title: 'Hang squat snatch',
                    type: 'repeticiones',
                    valor: '5/4/3/2/1 - 50/35 kg',
                  ),
                  SizedBox(height: 10),
                  Ejercicio(
                    title: 'Row',
                    type: 'calorias',
                    valor: '10 cal',
                  )
                ]),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            padding: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: const Size(double.infinity, 0),
          ),
          child: const Text('RESERVAR'),
        ),
      ),
    );
  }
}

class AvatarScrollItem extends StatelessWidget {
  const AvatarScrollItem({
    super.key,
    required this.pathImage,
  });

  final String pathImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: CircleAvatar(
        foregroundImage: AssetImage(
          pathImage,
        ),
      ),
    );
  }
}

class Bloque extends StatelessWidget {
  const Bloque({super.key, required this.letra, required this.title, required this.children});

  final String letra;
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
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
            ...children
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
