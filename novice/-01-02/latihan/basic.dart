// ini adalah fungsi
printOutput(dynamic aOutput) {
  print("Outputnya adalah $aOutput");
}

main() {
  var text;
  String name = "Robi";
  final name2 = "Dahariansyah";

  name2.runes.forEach((f) {
    print("${f} => ${String.fromCharCode(f)}");
  });

  // name2 = "sajdaj"; // tidak bisa memasukan nilai ke dalam variabel name2 karena variable final

  var foo = const [];
  const baz = []; // sama dengan const[]

  foo = [1, 2, 3, 4];
  //baz = [12, 12]; // tidak bisa memasukan nilai ke dalam const baz, karena....

  const Object i = "Robi";
  const list = [i as String];
  const map = {if (i is String) i: "String"};
  const set = {if (list is List<String>) ...list};

  var one = int.parse('1');
  assert(one == 1);

  var onePointOne = double.parse('2.56');
  assert(onePointOne == 2.56);

  String oneToString = 1.toString();
  assert(oneToString == '1');

  String number =
      3.23423432.toStringAsFixed(2); // membulatkan 2 angka dibelakang koma
  assert(number == '3.23');

  printOutput("Dahariansyah");

  // dart --enable-asserts nama_file.dart
  assert(text != null, "tidak boleh null");
  print(name);
  print(foo);
  print(map);
  print(set);

  printOutput(one);
  printOutput(onePointOne);
  printOutput(oneToString);
  printOutput(number);

  // belajar objek
  var object1 = {
    'nama': 'Robi Dahariansyah',
    'alamat': 'Jl. Sorowajan',
    'hobi': ['kajsdas', 'sdkbaskfd', 'akjsdajs']
  };

  print(object1['hobi']);

  // seleksi menggunakan if
  int nilai = 61;
  if (nilai >= 77) {
    print("Memuaskan");
  } else if (nilai >= 65) {
    print("Cukup memuaskan");
  } else if (nilai >= 30) {
    print("Tidak memuaskan");
  } else if (nilai >= 0) {
    print("Sangat tidak memuaskan");
  } else {
    print("Mohon masukan nilai berupa angka");
  }

  // seleksi menggunakan switch case
  int input = 2;
  switch (input) {
    case 1:
      {
        print("Saya memilih angka 1");
        break;
      }
    case 1:
      {
        print("Saya memilih angka 2");
        break;
      }
    case 1:
      {
        print("Saya memilih angka 3");
        break;
      }
    default:
      {}
  }
  // perulangan for dengan object
  var hobi = ['kasdaks', 'jvdhsa', 'ashdva'];
  for (int i = 1; i <= hobi.length; i++) {
    print(hobi[i - 1]);
  }

  // perulangan menggunakan forEach
  hobi.forEach((f) => print(f));
  hobi.contains(2);
  print('${hobi[0].toUpperCase()}');

  // perulangan while
  var angka = 5;
  var faktorial = 1;
  while (angka >= 1) {
    faktorial = faktorial * angka;
    angka--;
  }
  print("Faktorialnya adalah $faktorial");

  //perulangan do while
  var ulangi = 5;
  do {
    print(ulangi);
    ulangi--;
  } while (ulangi >= 0);

  // try {
  //   // lakukan sesuatu
  // } catch (e) {
  //   print("Error : $e");
  // } finally {
  //   // lakukan sesuatu
  // }

  void misbehave() {
    try {
      dynamic foo = true;
      print(foo++);
    } catch (e) {
      print("misbehave() partially handle ${e.runtimeType}");
      rethrow;
    }
  }

  try {
    misbehave();
  } catch (e) {
    print("main() fisnished handle ${e.runtimeType}");
  }
}
