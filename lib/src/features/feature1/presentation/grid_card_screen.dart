import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/feature1/data/rezepte_database.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/feature1/presentation/card_detail_screen.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/feature1/presentation/card_widget.dart';

class GridCardScreen extends StatefulWidget {
  const GridCardScreen({super.key});

  @override
  State<GridCardScreen> createState() => _GridCardScreenState();
}

class _GridCardScreenState extends State<GridCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: alleRezepte.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CardDetailScreen(rezept: alleRezepte[index])));
              },
              child: CardWidget(rezept: alleRezepte[index]),
            );
          },
        ));
  }
}
