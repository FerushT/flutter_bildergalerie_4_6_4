import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/rezeptegallerie/domain/rezept.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/rezeptegallerie/presentation/card_detail_screen.dart';

class CardWidget extends StatelessWidget {
  final Rezept rezept;

  const CardWidget({super.key, required this.rezept});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CardDetailScreen(rezept: rezept),
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  child: Image.asset(
                    rezept.bild,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(rezept.title),
            ),
          ],
        ),
      ),
    );
  }
}
