import 'dart:collection';

class BelajarMap {
  var detail = {'username': 'tom', 'password': '123'};
  Map persons = new Map();

  void tampilkan() {
    print(detail['username']);
    persons['nama'] = 'Robi Dahariansyah';
    print(persons['nama']);
    persons['alamat'] = 'Jl. Dr. Wahidin Toboali';
    print(persons);
    print(persons.length);
    print(persons.isEmpty);
    print(persons.isNotEmpty);

    detail.addAll({'jenis kelamin': 'laki-laki', 'alamat': 'Jl. Klaten'});
    print(detail);
    detail.clear(); // menghapus semua key and value
    print(detail);
    persons.remove('nama'); // menghapus elemen per key
    print(persons);
    persons.addAll({'jenis kelamin': 'laki-laki', 'alamat': 'Jl. Klaten'});
    persons.forEach((k, v) => print('${k} : ${v}'));

    print(persons);
  }
}
