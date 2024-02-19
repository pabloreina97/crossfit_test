import 'package:crossfit_test/benchmarks_screen.dart';
import 'package:crossfit_test/profile_screen.dart';
import 'package:crossfit_test/reservas_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  List<Widget> screens = <Widget>[const ReservasScreen(), const BenchmarksScreen(), const ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month),
            icon: Icon(Icons.calendar_month),
            label: 'Reservar',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.bar_chart)),
            label: 'Benchmarks',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.verified_user),
            ),
            label: 'Perfil',
          ),
        ],
      ),
      body: screens[currentPageIndex],
    );
  }
}
