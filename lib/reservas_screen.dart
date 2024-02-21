import 'package:crossfit_test/app_theme.dart';
import 'package:flutter/material.dart';

class ReservasScreen extends StatelessWidget {
  const ReservasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/puro_crossfit_logo.png',
          height: 50,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // _Actividad(title: 'CrossFit', hora: '12:00 - 13:00'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/card.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/card.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/card.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/card.png'),
          ),
          // _ActividadCard(title: 'CrossFit', hora: '16:30 - 17:30'),
          // _Actividad(title: 'Open', hora: '17:30 - 18:30'),
          // _Actividad(title: 'Hyrox', hora: '17:30 - 18:30'),
        ],
      ),
    );
  }
}

// class _Actividad extends StatelessWidget {
//   const _Actividad({
//     required this.title,
//     required this.hora,
//   });

//   final String title;
//   final String hora;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(3),
//           border: Border.all(
//             color: Colors.black12,
//             width: 0.5,
//           ),
//         ),
//         child: ListView(
//           shrinkWrap: true,
//           children: [
//             Expanded(
//               flex: 1,
//               child: Flex(
//                 direction: Axis.vertical,
//                 children: [
//                   Container(
//                     color: Colors.red,
//                     child: const Image(
//                       image: AssetImage('assets/images/muestra.png'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(width: 10),
//             Expanded(
//               flex: 5,
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: const TextStyle(
//                         fontSize: 40,
//                       ),
//                     ),
//                     Text(
//                       hora,
//                       style: AppTheme(selectedColor: 1).inter.copyWith(
//                             fontSize: 15,
//                           ),
//                     ),
//                     const SizedBox(height: 30),
//                     Row(
//                       children: [
//                         const Expanded(child: SizedBox()),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xFFFAF0D4),
//                             elevation: 0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                           ),
//                           child: const Text(
//                             'Detalles',
//                             style: TextStyle(
//                               fontSize: 22,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 15),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.amber,
//                             foregroundColor: Colors.white,
//                             elevation: 0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                           ),
//                           child: const Text(
//                             'Reservar',
//                             style: TextStyle(
//                               fontSize: 22,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class _ActividadCard extends StatelessWidget {
  const _ActividadCard({
    required this.title,
    required this.hora,
  });

  final String title;
  final String hora;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: colors.outlineVariant,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // Container(
          //   width: 40,
          //   child: Ink.image(
          //     image: NetworkImage('https://static.tuasaude.com/media/article/ne/lq/crossfit_37303_l.jpg'),
          //     fit: BoxFit.none,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(hora),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Detalles')),
                    const SizedBox(width: 10),
                    ElevatedButton(onPressed: () {}, child: Text('Reservar')),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Actividad extends StatelessWidget {
  const _Actividad({
    required this.title,
    required this.hora,
  });

  final String title;
  final String hora;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Colors.black12,
            width: 0.5,
          ),
        ),
        padding: const EdgeInsets.all(12),
        child: Stack(
          children: [
            const Positioned(
              right: 5,
              top: 5,
              child: Completo(),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 60,
                      child: Center(
                        child: Icon(
                          Icons.sports_handball,
                          color: Colors.amber,
                          size: 50,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 65),
                    Text(
                      hora,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFAF0D4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Detalles',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFC107),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Reservar',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Completo extends StatelessWidget {
  const Completo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.circle,
              color: Colors.amber,
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Colors.amber,
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Colors.amber,
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Colors.amber,
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Colors.amber,
              size: 10,
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(
              Icons.circle,
              color: Colors.amber,
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Colors.amber,
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Color(0xFFADAAA0),
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Color(0xFFADAAA0),
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Color(0xFFADAAA0),
              size: 10,
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(
              Icons.circle,
              color: Color(0xFFADAAA0),
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Color(0xFFADAAA0),
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Color(0xFFADAAA0),
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Color(0xFFADAAA0),
              size: 10,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              color: Color(0xFFADAAA0),
              size: 10,
            ),
          ],
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
