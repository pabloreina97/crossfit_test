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
              children: const [
                // MAÑANA
                _ClaseCard(
                  title: 'CROSSFIT',
                  hora: '7:00 - 8:00',
                  inscritos: 5,
                  plazas: 12,
                  id: 1,
                ),
                _ClaseCard(
                  title: 'OPEN BOX',
                  hora: '7:00 - 8:30',
                  inscritos: 5,
                  plazas: 6,
                  id: 2,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '7:00 - 8:00',
                  inscritos: 0,
                  plazas: 4,
                  id: 3,
                ),
                _ClaseCard(
                  title: 'TRAINING CULTURE',
                  hora: '7:00 - 8:00',
                  inscritos: 5,
                  plazas: 6,
                  id: 4,
                ),
                _ClaseCard(
                  title: 'CROSSFIT',
                  hora: '8:00 - 9:00',
                  inscritos: 5,
                  plazas: 12,
                  id: 5,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '8:00 - 9:00',
                  inscritos: 2,
                  plazas: 4,
                  id: 6,
                ),
                _ClaseCard(
                  title: 'OPEN BOX',
                  hora: '8:30 - 10:00',
                  inscritos: 5,
                  plazas: 6,
                  id: 7,
                ),
                _ClaseCard(
                  title: 'HYROX',
                  hora: '9:00 - 10:00',
                  inscritos: 5,
                  plazas: 12,
                  id: 8,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '9:00 - 10:00',
                  inscritos: 1,
                  plazas: 4,
                  id: 9,
                ),
                _ClaseCard(
                  title: 'TRAINING CULTURE',
                  hora: '9:00 - 10:00',
                  inscritos: 5,
                  plazas: 6,
                  id: 10,
                ),
                _ClaseCard(
                  title: 'CROSSFIT',
                  hora: '10:00 - 11:00',
                  inscritos: 5,
                  plazas: 12,
                  id: 11,
                ),
                _ClaseCard(
                  title: 'OPEN BOX',
                  hora: '10:00 - 11:30',
                  inscritos: 5,
                  plazas: 6,
                  id: 12,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '10:00 - 11:00',
                  inscritos: 3,
                  plazas: 4,
                  id: 13,
                ),
                _ClaseCard(
                  title: 'TRAINING CULTURE',
                  hora: '11:00 - 12:00',
                  inscritos: 5,
                  plazas: 6,
                  id: 14,
                ),
                _ClaseCard(
                  title: 'OPEN BOX',
                  hora: '11:30 - 13:00',
                  inscritos: 5,
                  plazas: 6,
                  id: 15,
                ),
                _ClaseCard(
                  title: 'CROSSFIT',
                  hora: '12:00 - 13:00',
                  inscritos: 5,
                  plazas: 12,
                  id: 16,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '12:00 - 13:00',
                  inscritos: 1,
                  plazas: 4,
                  id: 17,
                ),
                _ClaseCard(
                  title: 'OPEN BOX',
                  hora: '13:00 - 14:30',
                  inscritos: 5,
                  plazas: 6,
                  id: 18,
                ),
                _ClaseCard(
                  title: 'HYROX',
                  hora: '13:00 - 14:00',
                  inscritos: 5,
                  plazas: 12,
                  id: 19,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '13:00 - 14:00',
                  inscritos: 5,
                  plazas: 6,
                  id: 20,
                ),
                _ClaseCard(
                  title: 'TRAINING CULTURE',
                  hora: '13:00 - 14:00',
                  inscritos: 5,
                  plazas: 6,
                  id: 21,
                ),
                _ClaseCard(
                  title: 'INICIACIÓN',
                  hora: '14:00 - 15:00',
                  inscritos: 5,
                  plazas: 12,
                  id: 22,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '14:00 - 15:00',
                  inscritos: 2,
                  plazas: 4,
                  id: 23,
                ),
                // TARDE
                _ClaseCard(
                  title: 'OPEN BOX',
                  hora: '17:30 - 19:00',
                  inscritos: 5,
                  plazas: 6,
                  id: 24,
                ),
                _ClaseCard(
                  title: 'HYROX',
                  hora: '17:30 - 18:30',
                  inscritos: 5,
                  plazas: 12,
                  id: 25,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '17:30 - 18:30',
                  inscritos: 0,
                  plazas: 4,
                  id: 26,
                ),
                _ClaseCard(
                  title: 'TRAINING CULTURE',
                  hora: '17:30 - 18:30',
                  inscritos: 5,
                  plazas: 6,
                  id: 27,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '18:00 - 19:00',
                  inscritos: 3,
                  plazas: 4,
                  id: 28,
                ),
                _ClaseCard(
                  title: 'OPEN BOX',
                  hora: '18:30 - 20:00',
                  inscritos: 5,
                  plazas: 6,
                  id: 29,
                ),
                _ClaseCard(
                  title: 'OPEN COLECTIVAS',
                  hora: '19:00 - 20:00',
                  inscritos: 2,
                  plazas: 4,
                  id: 30,
                ),
                _ClaseCard(
                  title: 'CROSSFIT',
                  hora: '19:30 - 20:30',
                  inscritos: 5,
                  plazas: 12,
                  id: 31,
                ),
                _ClaseCard(
                  title: 'TRAINING CULTURE',
                  hora: '19:30 - 20:30',
                  inscritos: 5,
                  plazas: 6,
                  id: 32,
                ),
                _ClaseCard(
                  title: 'OPEN BOX',
                  hora: '20:00 - 21:30',
                  inscritos: 5,
                  plazas: 6,
                  id: 33,
                ),
                _ClaseCard(
                  title: 'CROSSFIT',
                  hora: '20:30 - 21:30',
                  inscritos: 5,
                  plazas: 12,
                  id: 34,
                ),
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
    required this.id,
  });

  final String title;
  final String hora;
  final int inscritos;
  final int plazas;
  final int id;

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
      onTap: () => Navigator.of(context).pushNamed(
        '/clase_detail',
        arguments: {
          'id': widget.id,
          'title': widget.title,
        },
      ),
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
                borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(cardRadius)),
                child: Hero(
                  tag: widget.id,
                  child: Image.asset(
                    'assets/images/${widget.title}.jpg',
                    height: double.infinity,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
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
                      const Spacer(),
                      if (inscrito)
                        Icon(
                          Icons.check_circle,
                          color: colors.primary,
                        )
                      else
                        Completo(
                          inscritos: widget.inscritos,
                          plazas: widget.plazas,
                        ),
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
  final int inscritos;
  final int plazas;

  const Completo({
    super.key,
    required this.inscritos,
    required this.plazas,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: _createChildren(context));
  }

  List<Widget> _createChildren(BuildContext context) {
    // Lista para almacenar los Widgets
    List<Widget> children = [];

    // Añadir elementos del primer tipo
    for (int i = 0; i < inscritos; i++) {
      children.add(
        Container(
          height: 20,
          width: 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      );
      // Añadir un SizedBox después de cada elemento del primer tipo, excepto después del último
      if (i < inscritos - 1 || plazas > inscritos) {
        children.add(const SizedBox(width: 2));
      }
    }

    // Añadir elementos del segundo tipo (si hay plazas disponibles)
    for (int i = 0; i < (plazas - inscritos); i++) {
      children.add(
        Container(
          height: 20,
          width: 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ),
      );
      // Añadir un SizedBox después de cada elemento del segundo tipo, excepto después del último
      if (i < (plazas - inscritos - 1)) {
        children.add(const SizedBox(width: 2));
      }
    }

    return children;
  }
}
