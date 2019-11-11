import 'dart:math';
import 'Spacecraft.dart';

main() {
  dynamic name = "Robi Dahariansyah";
  var hobby = ["Menghujat", "Mencaci maki", "Membaca"];

  var data = {
    'hobi': ["Menghujat", "Mencaci maki", "Membaca"],
    'hobi2': ["Menghujat", "Mencaci maki", "Membaca"]
  };

  print("Nama saya adalah Robi Dahariansyah");
  print("Nama saya $name");
  print(hobby[0]);
  print(data['hobi2'][2]);

  var year = 2000;
  if (year >= 2001) {
    print("21st century");
  } else if (year >= 1901) {
    print("20th century");
  } else {
    print("not birthday century");
  }

  while (year < 2016) {
    year += 1;
    print(year);
  }

  var bulan = [
    "january",
    "februari",
    "maret",
    "april",
    "mei",
    "juni",
    "juli",
    "agustus",
    "september",
    "oktober",
    "novemver",
    "desember"
  ];

  for (var object in bulan) {
    print(object);
  }

  for (int month = 1; month <= bulan.length; month++) {
    print("Bulan ke-" + month.toString() + " adalah " + bulan[month - 1]);
  }

  // ini belajar fungsi
  void printInteger(int aNumber) {
    print("The number is $aNumber");
  }

  var number = 21;
  printInteger(number);

  int fibonaccci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonaccci(n - 1) + fibonaccci(n - 2);
  }

  var result = fibonaccci(20);
  print(result);

  var voyager = Spacecraft('Voyager', DateTime(1996, 08, 09));
  voyager.describe();

  var voyager2 = Spacecraft.unlaunched('Voyager III');
  voyager2.describe();

  var orbitter = new Orbiter('Robi', DateTime(1996, 11, 12), 6);
  orbitter.describe();
}
