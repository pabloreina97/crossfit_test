import 'package:crossfit_test/app_theme.dart';
import 'package:crossfit_test/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ReservasScreen extends StatefulWidget {
  const ReservasScreen({super.key});

  @override
  State<ReservasScreen> createState() => _ReservasScreenState();
}

class _ReservasScreenState extends State<ReservasScreen> {
  @override
  Widget build(BuildContext context) {
    final CalendarFormat _calendarFormat = CalendarFormat.week;
    DateTime _focusedDay = DateTime.now();
    DateTime? _selectedDay;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/puro_crossfit_logo.png',
          height: 50,
        ),
        centerTitle: true,
      ),
      // ? drawer: Container(width: double.infinity, child: Drawer(child: ProfileScreen())),
      body: SingleChildScrollView(
        // TODO: Hacer scrollable solo el ListView, y que permanezca el TableCalendar arriba
        child: Column(
          children: [
            TableCalendar(
              locale: 'es_ES',
              availableCalendarFormats: const {CalendarFormat.week: 'Week'},
              startingDayOfWeek: StartingDayOfWeek.monday,
              firstDay: DateTime.utc(2023, 7, 20),
              lastDay: DateTime.utc(2025, 7, 20),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                // _Actividad(title: 'CrossFit', hora: '12:00 - 13:00'),
                _ClaseCard(title: 'CROSSFIT', hora: '12:00 - 13:00', inscritos: 5, plazas: 12),
                _ClaseCard(title: 'CROSSFIT', hora: '12:00 - 13:00', inscritos: 5, plazas: 12),
                _ClaseCard(title: 'CROSSFIT', hora: '12:00 - 13:00', inscritos: 5, plazas: 12),
                _ClaseCard(title: 'CROSSFIT', hora: '12:00 - 13:00', inscritos: 5, plazas: 12),
                _ClaseCard(title: 'CROSSFIT', hora: '12:00 - 13:00', inscritos: 5, plazas: 12),
                _ClaseCard(title: 'CROSSFIT', hora: '12:00 - 13:00', inscritos: 5, plazas: 12),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/card.png'),
                ),
                // _ActividadCard(title: 'CrossFit', hora: '16:30 - 17:30'),
                // _Actividad(title: 'Open', hora: '17:30 - 18:30'),
                // _Actividad(title: 'Hyrox', hora: '17:30 - 18:30'),
              ],
            ),
          ],
        ),
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

class _ClaseCard extends StatefulWidget {
  const _ClaseCard({
    required this.title,
    required this.hora,
    required this.inscritos,
    required this.plazas,
  });

  final String title;
  final String hora;
  final int inscritos;
  final int plazas;

  @override
  State<_ClaseCard> createState() => _ClaseCardState();
}

class _ClaseCardState extends State<_ClaseCard> {
  bool inscrito = true;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    const double cardRadius = 12;
    return Container(
      height: 80,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardRadius),
          side: BorderSide(
            color: colors.outlineVariant,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(cardRadius)),
              child: Image.asset(
                'assets/cf.webp',
                height: double.infinity,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // Container(
                    //   width: 40,
                    //   child: Ink.image(
                    //     image: NetworkImage('https://static.tuasaude.com/media/article/ne/lq/crossfit_37303_l.jpg'),
                    //     fit: BoxFit.none,
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.title, style: textTheme.titleMedium),
                        Text(widget.hora, style: textTheme.bodyMedium),
                      ],
                    ),
                    Spacer(),
                    if (inscrito)
                      const Icon(
                        Icons.check_circle,
                      )
                    else
                      Completo(),
                  ],
                ),
              ),
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
