# [Firs App Lanjutan](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2/#0)
Klik link diatas untuk melanjutkan project part 2.

## Part 2
### Langkah 1: Perkenalan
Ini merupakan lanjutan project `First App` sebelumnya.
- Apa yang akan di pelajari pada part 2 ini:
    * Bagaimana cara menulis Aplikasi Flutter secara alami untuk kedua *platform* yakni iOS dan Android.
    * Bagaimana menggunakan `Hot Reload` untuk mempercepat siklus pengembangan.
    * Bagaimana menambah interaktif ke dalam *stateful widget*.
    * Bagaimana membuat dan mengarahkan ke halaman kedua.
    * Bagaimana mengubah tampilan menggunakan tema.
- Apa yang akan dibangun di part 2 ini:
Pengguna akan memilih daftar nama yang disukai atau yang tidak disukai kemudian menekan icon daftar nama yang ada di `AppBar` untuk melihat daftar nama yang disukai.
### Langkah 2: Mengatur environment Flutter
Langkah ini sudha dilakukan pada [latihan](https://github.com/riansyahrobi8/praxis-academy/tree/master/novice/-02-01/latihan) minggu kedua hari pertama. Ikuti langkah-langkah yang terdapat pada link `latihan` untuk mengatur *environment* flutter jika belum dilakukan.
### Langkah 3: Memulai Aplikasi
Langkah ini sudah dilakukan sebelumnya pada part 1.
### Langkah 4: Menambahkan icon pada List
1. Tambahkan variabel `_saved` bertipe *widget* `Set` dengan nilai yakni `WordPair` pada `_RandomWordsState`. Variabel ini untuk menyimpan `wordPair` yang disukai pengguna.
```
class RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();   // tambahkan baris ini.
  final TextStyle _biggerFont = TextStyle(fontSize: 18.0);
  ...
}
```
2. Dalam `_buildRow` tambahkan variabel `alreadySaved` bertipe data `bool` yang diisi dengan `wordPair`.
```
Widget _buildRow(WordPair pair) {
  final bool alreadySaved = _saved.contains(pair);  // tambahkan baris ini.
  ...
}
```
3. Menambahkan icon *favorite* ke dalam `ListTile`. Ubah `_buildRow` hingga menjadi seperti berikut:
```
Widget _buildRow(WordPair pair) {
  final bool alreadySaved = _saved.contains(pair);
  return ListTile(
    title: Text(
      pair.asPascalCase,
      style: _biggerFont,
    ),
    trailing: Icon(   // tambahkan baris dari sini... 
      alreadySaved ? Icons.favorite : Icons.favorite_border,
      color: alreadySaved ? Colors.red : null,
    ),                // ... sampai sini.
  );
}
```