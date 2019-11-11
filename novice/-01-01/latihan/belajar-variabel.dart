main() {
  String sentence1 = "Nama saya adalah";
  dynamic name = " Robi Dahariansyah";
  print(sentence1 + name);

  int lineCount;
  assert(lineCount == null);

  final name2 = "BOB";
  final String name3 = "Luffy";

  const bar = 1000000;
  const double atm = 1.0023 * bar;
  print(atm);

  var one = int.parse('1');
  assert(one == 1);
  print(one);

  // membulatkan 3 angka dibelakang koma.
  String piString = 3.16253142.toStringAsFixed(3);
  print(piString);

  String s = "robi dahariansyah";
  print('That deserve all caps ${s.toUpperCase()}');

  var s1 = '''
    you cant
  ''';

  var s2 = """
    you can
  """;

  print(s1);
  print(s2);

  // kegunaan huruf r di depan value adalah mengubah semua tanda sepert \n mnjadi sebuah string
  var s3 = r'In a raw string, not even \n gets special treatment.';
  print(s3);

  var list = [1, 2, 3, 5, 6, 8, 2, 3, 4];
  print(list.length);

  var list2 = [0, ...list];
  print(list2.length == 10); // mengecek apakah panjang sama denga 10
  print(list2);

  //var nav = ['home', 'furniture', 'plants', if (promoActive) 'outlet'];

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings[0]);

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var data = <String>{};
  data.add("Robi");
  data.addAll(halogens);

  print(data);
  print(data.length == 5);
}
