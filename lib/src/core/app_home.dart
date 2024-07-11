import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/rezeptegallerie/presentation/grid_card_screen.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/rezeptegallerie/presentation/ueber_mich.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

int currentIndex = 0;

List<Widget> screens = [
  const GridCardScreen(),
  const UeberMich(),
];

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Rezept Inspirationen"),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        indicatorColor: Colors.blue,
        selectedIndex: currentIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.check), label: "Bilder"),
          NavigationDestination(icon: Icon(Icons.person), label: "Über mich"),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
