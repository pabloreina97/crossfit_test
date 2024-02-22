import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProveedorScreen extends StatelessWidget {
  const ProveedorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nombre Proveedor"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CategoriaTienda(nombreCategoria: "Ropa"),
              CategoriaTienda(nombreCategoria: "Nutrición"),
              CategoriaTienda(nombreCategoria: "Accesorios"),
              CategoriaTienda(nombreCategoria: "Equipamiento"),
              CategoriaTienda(nombreCategoria: "Suplementos"),
              CategoriaTienda(nombreCategoria: "Tecnología"),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriaTienda extends StatelessWidget {
  const CategoriaTienda({super.key, required this.nombreCategoria});

  final String nombreCategoria;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                nombreCategoria.toUpperCase(),
                style: textTheme.headlineSmall,
              ),
              const Spacer(),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/categoria_tienda'),
                child: const Text(
                  "Mostrar todo",
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ElementoTienda(index: index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ElementoTienda extends StatelessWidget {
  const ElementoTienda({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: index != 4 ? 16.0 : 0),
      child: Container(
        width: 160,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
