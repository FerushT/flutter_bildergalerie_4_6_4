import 'package:flutter_bildergalerie_4_6_4/src/features/rezeptegallerie/domain/zutat.dart';

class Rezept {
  String title;
  String subtitle;
  String description;
  List<Zutat> zutaten;
  String bild;

  Rezept(
      {required this.title,
      required this.subtitle,
      required this.description,
      required this.zutaten,
      required this.bild});
}
