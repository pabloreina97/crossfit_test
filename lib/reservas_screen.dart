import 'package:flutter/material.dart';

class ReservasScreen extends StatelessWidget {
  const ReservasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ReservaTile(title: 'CrossFit', hora: '12:00 - 13:00'),
          ReservaTile(title: 'CrossFit', hora: '16:30 - 17:30'),
          ReservaTile(title: 'Open', hora: '17:30 - 18:30'),
          ReservaTile(title: 'Hyrox', hora: '17:30 - 18:30'),
        ],
      ),
    );
  }
}

class ReservaTile extends StatefulWidget {
  const ReservaTile({
    super.key,
    required this.title,
    required this.hora,
  });

  final String title;
  final String hora;

  @override
  State<ReservaTile> createState() => _ReservaTileState();
}

class _ReservaTileState extends State<ReservaTile> {
  bool reservado = false;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: Colors.amber,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.album),
            title: Text(widget.title),
            subtitle: Text(widget.hora),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('DETALLES'),
                onPressed: () => Navigator.of(context).pushNamed('/clase_detail'),
              ),
              const SizedBox(width: 8),
              TextButton(
                child: reservado ? Text('CANCELAR', style: TextStyle(color: colors.error)) : Text('RESERVAR'),
                onPressed: () {
                  setState(() {
                    reservado = !reservado;
                  });
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
