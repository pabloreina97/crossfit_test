import 'package:crossfit_test/benchmarks_screen.dart';
import 'package:crossfit_test/profile_screen.dart';
import 'package:crossfit_test/proveedores_screen.dart';
import 'package:crossfit_test/reservas_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  List<Widget> screens = <Widget>[const ReservasScreen(), const BenchmarksScreen(), const ProveedoresScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'PURO ',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 30),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.only(right: 4, left: 4, bottom: 3),
              child: Text(
                'CrossFit',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 30,
                      color: Theme.of(context).colorScheme.onPrimary,
                      height: 1,
                    ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      drawer: const SizedBox(
        width: double.infinity,
        child: Drawer(
          child: ProfileScreen(),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Theme.of(context).colorScheme.primary,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month, color: Theme.of(context).colorScheme.onPrimary),
            icon: const Icon(Icons.calendar_month),
            label: 'Reservar',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bar_chart, color: Theme.of(context).colorScheme.onPrimary),
            icon: const Icon(Icons.bar_chart),
            label: 'Benchmarks',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_bag, color: Theme.of(context).colorScheme.onPrimary),
            icon: const Icon(Icons.shopping_bag),
            label: 'Tienda',
          ),
        ],
      ),
      body: screens[currentPageIndex],
    );
  }
}
