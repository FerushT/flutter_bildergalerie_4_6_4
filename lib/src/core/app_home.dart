import 'package:flutter/material.dart';

import 'package:flutter_bildergalerie_4_6_4/src/features/profile/presentationn/ueber_mich_screen.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/rezeptegallerie/presentation/grid_card_screen.dart';

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
        backgroundColor: const Color.fromARGB(255, 211, 156, 5),
        title: const Text("Meine Rezept Gallerie"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: const Color.fromARGB(148, 209, 178, 140),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Bilder"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Über mich"),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
