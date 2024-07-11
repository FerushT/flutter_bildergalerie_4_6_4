import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/feature1/domain/zutat.dart';

class Rezept {
  String title;
  String description;
  List<Zutat> zutaten;
  Image bild;

  Rezept(
      {required this.title,
      required this.description,
      required this.zutaten,
      required this.bild});
}
