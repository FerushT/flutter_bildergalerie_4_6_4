import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/rezeptegallerie/domain/rezept.dart';

class CardDetailScreen extends StatelessWidget {
  final Rezept rezept;
  const CardDetailScreen({super.key, required this.rezept});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rezeptdetails: ${rezept.title}",
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 400, width: 400, child: rezept.bild),
          const SizedBox(
            height: 20,
          ),
          Text(rezept.description),
          const Divider(
            height: 40,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: rezept.zutaten.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      rezept.zutaten[index].name,
                    ),
                    trailing: Text(rezept.zutaten[index].gewicht != null
                        ? "${rezept.zutaten[index].gewicht.toString().replaceAll(".", ",")} Gramm"
                        : "${rezept.zutaten[index].stueckzahl} Stück"),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
