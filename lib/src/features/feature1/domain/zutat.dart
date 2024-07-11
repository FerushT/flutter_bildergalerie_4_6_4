class Zutat {
  String name;
  double? gewicht;
  int? stueckzahl;

  Zutat({required this.name, this.gewicht, this.stueckzahl});
}

//Oberkategorien
class Fisch extends Zutat {
  Fisch({required super.name, super.gewicht, super.stueckzahl});
}

class Fleisch extends Zutat {
  Fleisch({required super.name, super.gewicht, super.stueckzahl});
}

class Getreide extends Zutat {
  Getreide({required super.name, super.gewicht, super.stueckzahl});
}

class Gemuese extends Zutat {
  Gemuese({required super.name, super.gewicht, super.stueckzahl});
}

class Backwaren extends Zutat {
  Backwaren({required super.name, super.gewicht, super.stueckzahl});
}

class Nudeln extends Zutat {
  Nudeln({required super.name, super.gewicht, super.stueckzahl});
}

class Gewuerze extends Zutat {
  Gewuerze({required super.name, super.gewicht, super.stueckzahl});
}

class Kaese extends Zutat {
  Kaese({required super.name, super.gewicht, super.stueckzahl});
}

class Obst extends Zutat {
  Obst({required super.name, super.gewicht, super.stueckzahl});
}

class Suesswaren extends Zutat {
  Suesswaren({required super.name, super.gewicht, super.stueckzahl});
}

//Unterkategorien....

class Lachs extends Fisch {
  Lachs({required super.name, super.gewicht, super.stueckzahl});
}
