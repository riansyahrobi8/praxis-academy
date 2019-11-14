class BelajarList {
  void tampilkan() {
    var persons = ['Robi', 'Cahyo', 'Alfi', 'Agus', 'Agung'];
    print(persons);
    print(persons[3]);

    var hobbies = new List(5);
    hobbies[0] = 'Menghujat';
    hobbies[1] = 'Anarkis';
    hobbies[2] = 'Mancing emosi warga';
    hobbies[3] = 'Mengaji';
    hobbies[4] = 'Nongkrong';
    print(hobbies);
    print(hobbies[2]);

    var bangunDatar = new List();
    bangunDatar.add('Persegi Panjang');
    bangunDatar.add('Bujur Sangkar');
    bangunDatar.add('Segitiga');
    bangunDatar.add('Lingkaran');
    print(bangunDatar);
    print(bangunDatar[2]);

    // inserting elemen menggunakan function add and addAll
    // menambah elemen di indeks terakhir
    persons.add('Agung');
    print(persons);
    persons.addAll(['Ari', 'Albert']);
    print(persons);

    // inserting elemen menggunakan function insert and insertAll
    // // menambah elemen di indeks tertentu insert(index, value), insertAll(index, [value, value, ...])
    // hobbies.insert(2, 'Mencaci maki'); // tidak bisa menambahkan nilai di List fixed-length
    // print(hobbies);

    bangunDatar.insert(2, 'Trapesium');
    print(bangunDatar);
    bangunDatar
        .insertAll(0, ['Prisma', 'Segitiga siku-siku', 'Segitiga sama kaki']);
    print(bangunDatar);

    // updating element array
    hobbies[0] = 'Mencaci maki';
    print(hobbies);

    // updating menggunakan function replaceRange(index ke i to j, [values, values, ...])
    persons.replaceRange(
        1, 3, ["Cahyo2", "Alfi2", "Agus2"]); // harus menggunakan tanda petik ""
    print(persons);

    // remove element array atau List menggunakan remove(object)
    persons.remove('Ari');
    print(persons);

    // remove menggunakan function removeAt(int index)
    persons.removeAt(0);
    print(persons);

    // remove menggunakan function removeLast();
    persons.removeLast();
    print(persons);

    // menggunakan function removeRange(int start, int end)
    persons.removeRange(0, 2);
    print(persons);

    print('Panjang array persons ${persons.length}');
    print('Panjang array hobbies ${hobbies.length}');
    print('Panjang array bangun datar ${bangunDatar.length}');
  }
}
