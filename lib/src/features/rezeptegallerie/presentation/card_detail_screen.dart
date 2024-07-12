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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 400,
                  child: Image.asset(
                    rezept.bild,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(rezept.title),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(rezept.description),
                ),
                const Divider(
                  indent: 16,
                  endIndent: 16,
                  height: 40,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: rezept.zutaten.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        rezept.zutaten[index].name,
                      ),
                      trailing: Text(rezept.zutaten[index].gewicht != null
                          ? "${rezept.zutaten[index].gewicht.toString()} g"
                          : "${rezept.zutaten[index].stueckzahl} Stück"),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
