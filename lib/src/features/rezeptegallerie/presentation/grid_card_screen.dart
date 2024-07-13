import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/rezeptegallerie/data/rezepte_database.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/rezeptegallerie/presentation/card_widget.dart';

class GridCardScreen extends StatelessWidget {
  const GridCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double gridPadding = 10;
    return Scaffold(
        backgroundColor: const Color.fromARGB(148, 209, 178, 140),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: gridPadding,
                mainAxisSpacing: gridPadding),
            itemCount: alleRezepte.length,
            itemBuilder: (context, index) {
              return CardWidget(
                rezept: alleRezepte[index],
              );
            },
          ),
        ));
  }
}
