import 'package:crossfit_test/theme/app_theme.dart';
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
  bool inscrito = false;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    const double cardRadius = 12;

    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/clase_detail'),
      child: SizedBox(
        height: 100,
        child: Card(
          color: colors.surface,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title, style: textTheme.headlineMedium),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(widget.hora, style: textTheme.labelMedium),
                        ],
                      ),
                      Spacer(),
                      if (inscrito)
                        Icon(
                          Icons.check_circle,
                          color: colors.primary,
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
      ),
    );
  }
}

class Completo extends StatelessWidget {
  const Completo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 20,
        width: 2,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), color: Theme.of(context).colorScheme.secondary),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        height: 20,
        width: 2,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), color: Theme.of(context).colorScheme.secondary),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        height: 20,
        width: 2,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), color: Theme.of(context).colorScheme.secondary),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        height: 20,
        width: 2,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), color: Theme.of(context).colorScheme.secondary),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        height: 20,
        width: 2,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), color: Theme.of(context).colorScheme.secondary),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        height: 20,
        width: 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Theme.of(context).colorScheme.secondaryContainer),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        height: 20,
        width: 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Theme.of(context).colorScheme.secondaryContainer),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        height: 20,
        width: 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Theme.of(context).colorScheme.secondaryContainer),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        height: 20,
        width: 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Theme.of(context).colorScheme.secondaryContainer),
      ),
      SizedBox(
        width: 2,
      ),
    ]);
  }
}
