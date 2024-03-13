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
    const CalendarFormat calendarFormat = CalendarFormat.week;
    DateTime focusedDay = DateTime.now();
    DateTime? selectedDay;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: TableCalendar(
              calendarStyle: CalendarStyle(
                todayTextStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimaryContainer, fontSize: 16.0),
                todayDecoration:
                    BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer, shape: BoxShape.circle),
                weekendTextStyle: TextStyle(color: Theme.of(context).colorScheme.secondaryContainer, fontSize: 16.0),
              ),
              headerStyle: HeaderStyle(
                formatButtonTextStyle: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 16.0),
                titleCentered: true,
                leftChevronIcon: Icon(Icons.chevron_left, color: Theme.of(context).colorScheme.onSurface),
                rightChevronIcon: Icon(Icons.chevron_right, color: Theme.of(context).colorScheme.onSurface),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(color: Theme.of(context).colorScheme.secondaryContainer),
                weekendStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ),
              locale: 'es_ES',
              availableCalendarFormats: const {CalendarFormat.week: 'Week'},
              startingDayOfWeek: StartingDayOfWeek.monday,
              firstDay: DateTime.utc(2023, 7, 20),
              lastDay: DateTime.utc(2025, 7, 20),
              focusedDay: focusedDay,
              calendarFormat: calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(selectedDay, selectedDay)) {
                  setState(() {
                    selectedDay = selectedDay;
                    focusedDay = focusedDay;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                focusedDay = focusedDay;
              },
            ),
          ),
          Expanded(
            child: Scrollbar(
              interactive: true,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        _ClaseTile(
                          title: 'CROSSFIT',
                          hora: '7:00 - 8:00',
                          inscritos: 5,
                          plazas: 12,
                          id: 1,
                        ),
                        _ClaseTile(
                          title: 'OPEN BOX',
                          hora: '7:00 - 8:30',
                          inscritos: 5,
                          plazas: 6,
                          id: 2,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '7:00 - 8:00',
                          inscritos: 0,
                          plazas: 4,
                          id: 3,
                        ),
                        _ClaseTile(
                          title: 'TRAINING CULTURE',
                          hora: '7:00 - 8:00',
                          inscritos: 5,
                          plazas: 6,
                          id: 4,
                        ),
                        _ClaseTile(
                          title: 'CROSSFIT',
                          hora: '8:00 - 9:00',
                          inscritos: 5,
                          plazas: 12,
                          id: 5,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '8:00 - 9:00',
                          inscritos: 2,
                          plazas: 4,
                          id: 6,
                        ),
                        _ClaseTile(
                          title: 'OPEN BOX',
                          hora: '8:30 - 10:00',
                          inscritos: 5,
                          plazas: 6,
                          id: 7,
                        ),
                        _ClaseTile(
                          title: 'HYROX',
                          hora: '9:00 - 10:00',
                          inscritos: 5,
                          plazas: 12,
                          id: 8,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '9:00 - 10:00',
                          inscritos: 1,
                          plazas: 4,
                          id: 9,
                        ),
                        _ClaseTile(
                          title: 'TRAINING CULTURE',
                          hora: '9:00 - 10:00',
                          inscritos: 5,
                          plazas: 6,
                          id: 10,
                        ),
                        _ClaseTile(
                          title: 'CROSSFIT',
                          hora: '10:00 - 11:00',
                          inscritos: 5,
                          plazas: 12,
                          id: 11,
                        ),
                        _ClaseTile(
                          title: 'OPEN BOX',
                          hora: '10:00 - 11:30',
                          inscritos: 5,
                          plazas: 6,
                          id: 12,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '10:00 - 11:00',
                          inscritos: 3,
                          plazas: 4,
                          id: 13,
                        ),
                        _ClaseTile(
                          title: 'TRAINING CULTURE',
                          hora: '11:00 - 12:00',
                          inscritos: 5,
                          plazas: 6,
                          id: 14,
                        ),
                        _ClaseTile(
                          title: 'OPEN BOX',
                          hora: '11:30 - 13:00',
                          inscritos: 5,
                          plazas: 6,
                          id: 15,
                        ),
                        _ClaseTile(
                          title: 'CROSSFIT',
                          hora: '12:00 - 13:00',
                          inscritos: 5,
                          plazas: 12,
                          id: 16,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '12:00 - 13:00',
                          inscritos: 1,
                          plazas: 4,
                          id: 17,
                        ),
                        _ClaseTile(
                          title: 'OPEN BOX',
                          hora: '13:00 - 14:30',
                          inscritos: 5,
                          plazas: 6,
                          id: 18,
                        ),
                        _ClaseTile(
                          title: 'HYROX',
                          hora: '13:00 - 14:00',
                          inscritos: 5,
                          plazas: 12,
                          id: 19,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '13:00 - 14:00',
                          inscritos: 5,
                          plazas: 6,
                          id: 20,
                        ),
                        _ClaseTile(
                          title: 'TRAINING CULTURE',
                          hora: '13:00 - 14:00',
                          inscritos: 5,
                          plazas: 6,
                          id: 21,
                        ),
                        _ClaseTile(
                          title: 'INICIACIÓN',
                          hora: '14:00 - 15:00',
                          inscritos: 5,
                          plazas: 12,
                          id: 22,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '14:00 - 15:00',
                          inscritos: 2,
                          plazas: 4,
                          id: 23,
                        ),
                        // TARDE
                        _ClaseTile(
                          title: 'OPEN BOX',
                          hora: '17:30 - 19:00',
                          inscritos: 5,
                          plazas: 6,
                          id: 24,
                        ),
                        _ClaseTile(
                          title: 'HYROX',
                          hora: '17:30 - 18:30',
                          inscritos: 5,
                          plazas: 12,
                          id: 25,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '17:30 - 18:30',
                          inscritos: 0,
                          plazas: 4,
                          id: 26,
                        ),
                        _ClaseTile(
                          title: 'TRAINING CULTURE',
                          hora: '17:30 - 18:30',
                          inscritos: 5,
                          plazas: 6,
                          id: 27,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '18:00 - 19:00',
                          inscritos: 3,
                          plazas: 4,
                          id: 28,
                        ),
                        _ClaseTile(
                          title: 'OPEN BOX',
                          hora: '18:30 - 20:00',
                          inscritos: 5,
                          plazas: 6,
                          id: 29,
                        ),
                        _ClaseTile(
                          title: 'OPEN COLECTIVAS',
                          hora: '19:00 - 20:00',
                          inscritos: 2,
                          plazas: 4,
                          id: 30,
                        ),
                        _ClaseTile(
                          title: 'CROSSFIT',
                          hora: '19:30 - 20:30',
                          inscritos: 5,
                          plazas: 12,
                          id: 31,
                        ),
                        _ClaseTile(
                          title: 'TRAINING CULTURE',
                          hora: '19:30 - 20:30',
                          inscritos: 5,
                          plazas: 6,
                          id: 32,
                        ),
                        _ClaseTile(
                          title: 'OPEN BOX',
                          hora: '20:00 - 21:30',
                          inscritos: 5,
                          plazas: 6,
                          id: 33,
                        ),
                        _ClaseTile(
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
            ),
          ),
        ],
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
        '/clase_detail2',
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
              // ClipRRect(
              //   borderRadius: const BorderRadius.horizontal(left: Radius.circular(cardRadius)),
              //   child: Hero(
              //     tag: widget.id,
              //     child: Image.asset(
              //       'assets/images/${widget.title}.jpg',
              //       height: double.infinity,
              //       width: 80,
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),

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

class _ClaseTile extends StatefulWidget {
  const _ClaseTile({
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
  State<_ClaseTile> createState() => _ClaseTileState();
}

class _ClaseTileState extends State<_ClaseTile> {
  bool inscrito = false;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    // const double cardRadius = 12;

    return ListTile(
      contentPadding: const EdgeInsets.all(12),
      onTap: () => Navigator.of(context).pushNamed(
        '/clase_detail2',
        arguments: {
          'id': widget.id,
          'title': widget.title,
        },
      ),
      leading: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        // child: Hero(
        //   tag: widget.id,
        //   child: Image.asset(
        //     'assets/images/${widget.title}.jpg',
        //     fit: BoxFit.cover,
        //     width: 96,
        //   ),
        // ),
        child: Image.asset(
          'assets/images/${widget.title}.jpg',
          fit: BoxFit.cover,
          width: 96,
        ),
      ),
      // leading: Icon(
      //   widget.icon,
      //   color: widget.iconColor,
      //   size: 36,
      // ),
      title: Text(widget.title, style: textTheme.headlineMedium),
      subtitle: Text(widget.hora, style: textTheme.labelMedium),
      trailing: inscrito
          ? Icon(
              Icons.check_circle,
              color: colors.primary,
            )
          : Container(
              width: 48,
              alignment: Alignment.centerRight,
              child: Completo(
                inscritos: widget.inscritos,
                plazas: widget.plazas,
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
    return Tooltip(
        message: 'Nivel de ocupación',
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: _createChildren(context)));
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
