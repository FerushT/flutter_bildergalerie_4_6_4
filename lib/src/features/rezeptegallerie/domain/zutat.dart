class Zutat {
  String name;
  double? gewicht;
  int? stueckzahl;
  double? liter;

  Zutat({required this.name, this.gewicht, this.stueckzahl, this.liter});
}

//Oberkategorien
class Fisch extends Zutat {
  Fisch({required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Fleisch extends Zutat {
  Fleisch({required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Getreide extends Zutat {
  Getreide({required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Gemuese extends Zutat {
  Gemuese({required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Backwaren extends Zutat {
  Backwaren(
      {required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Nudeln extends Zutat {
  Nudeln({required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Gewuerze extends Zutat {
  Gewuerze({required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Kaese extends Zutat {
  Kaese({required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Obst extends Zutat {
  Obst({required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Suesswaren extends Zutat {
  Suesswaren(
      {required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Buerger extends Zutat {
  Buerger({required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Fluessigkeit extends Zutat {
  Fluessigkeit(
      {required super.name, super.gewicht, super.stueckzahl, super.liter});
}

class Salat extends Zutat {
  Salat({required super.name, super.gewicht, super.stueckzahl});
}

//Unterkategorien....

class Lachs extends Fisch {
  Lachs({required super.name, super.gewicht, super.stueckzahl, super.liter});
}
