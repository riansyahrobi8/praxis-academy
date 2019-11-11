class Spacecraft {
  String name;
  DateTime launchDate;

  Spacecraft(this.name, this.launchDate);

  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear => launchDate?.year;

  void describe() {
    print('Spaceccraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched; $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number astrnauts $astronauts');
  }
}

class Orbiter extends Spacecraft {
  num altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}
