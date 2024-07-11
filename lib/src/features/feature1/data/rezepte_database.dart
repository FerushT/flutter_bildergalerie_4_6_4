import 'package:flutter/material.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/feature1/domain/rezept.dart';
import 'package:flutter_bildergalerie_4_6_4/src/features/feature1/domain/zutat.dart';

List<Rezept> alleRezepte = [
  Rezept(
      title: "Lasagne",
      description: "Italienische Spezialität",
      zutaten: [
        Lachs(name: "Lachs", gewicht: 1000),
        Nudeln(name: "Nudeln", gewicht: 500),
      ],
      bild: Image.asset("assets/images/Lasagne.jpg")),
  Rezept(
      title: "Chili con Carne",
      description: "Mexikanische Spezialität",
      zutaten: [
        Kaese(name: "Käse", gewicht: 300),
        Fleisch(name: "Hackfleisch", gewicht: 200),
      ],
      bild: Image.asset("assets/images/Chili con Carne.jpg")),
  Rezept(
      title: "Pizza",
      description: "Italienische Spezialität",
      zutaten: [
        Kaese(name: "Käse", gewicht: 300),
        Getreide(name: "Getreide", gewicht: 200),
      ],
      bild: Image.asset("assets/images/pizza.jpg")),
  Rezept(
    title: "Nudelauflauf",
    description: "Irgendeine Spezialität",
    zutaten: [
      Nudeln(name: "Nudeln", gewicht: 500),
      Obst(name: "Obst", stueckzahl: 2, gewicht: 300)
    ],
    bild: Image.asset("assets/images/Nudelauflauf.jpg"),
  )
];
