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
4. Jalankan aplikasi secara `Hot Reload` dengan menekan `F5` atau klik logo petir.
<p align="center">
    <img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/part21.png" width="300">
</p>

### Langka 5: Tambahkan interaktif
Pada langkah ini kita akan membuat *icon favorite* dapat disentuh. Ketika pengguna menekan *icon favorite* daftar `wordPair` akan disimpan atau dihapus. Untuk melakukan ini kita harus melakuakn perubahan pada `_buildRow` yang ada di *widget* `_RandomWordsState`.
1. Tambahkan properti onTap dengan *function* `setState()` didalamnya.
```
Widget _buildRow(WordPair pair) {
  final alreadySaved = _saved.contains(pair);
  return ListTile(
    title: Text(
      pair.asPascalCase,
      style: _biggerFont,
    ),
    trailing: Icon(
      alreadySaved ? Icons.favorite : Icons.favorite_border,
      color: alreadySaved ? Colors.red : null,
    ),
    onTap: () {      // tambahkan baris dari sini...
      setState(() {
        if (alreadySaved) {
          _saved.remove(pair);
        } else { 
          _saved.add(pair); 
        } 
      });
    },               // ... sampai sini.
  );
}
```
Dalam *function* `setState()` terdapat seleksi, jika *icon favorite* dalam keadaan aktif atau merah ditekan, maka `wordPair` akan dihapus dari daftar disukai, begitu sebaliknya.
<br/>

2. Jalankan aplikasi secara `Hot Reload` dengan menekan `F5` atau klik logo petir.
<p align="center">
  <img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/part22.png" width="300">
</p>

### Langkah 6: Arahkan ke tampilan baru
Dalam langkah ini, kita akan menambahkan halaman baru dan menampilkan daftar `wordPair` yang disukai. Dalam Flutter *widget* `Navigator` mengelola tumpukan rute antar halaman dalam sebuah aplikasi. Selanjutnya kita akan menambahkan *icon* daftar ke `AppBar` dalam *method* `build` `_RandomWordsState`
1. Menambahakan icon ke dalam *widget* `build` yang ada di dalam *class* `_RandomWordsState`.
```
class RandomWordsState extends State<RandomWords> {
  ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[      // tambahkan 3 baris mulai dari sini...
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],                      // ... sampai sini.
      ),
      body: _buildSuggestions(),
    );
  }
  ...
}
```
2. Tambahkan *function* `setState()` pada `_RandomWordsState`.
```
void _pushSaved() {
  }
```
3. Jalankan kembali aplikasi dengan menekan tombol `F5` untuk melihat *icon* daftar pada `AppBar`. Jika icon ini ditekan, maka tidak terjadi apa-apa dikarenakan *function* `_pushSaved` masih kosong. 

Selanjutnya kita akan membuat halaman baru dan mengarahkan halaman ini ke halaman tersebut. Halaman baru dibangun menggunakan properti `MaterialPageRoute`.
4. Panggil *widget* `Navigator.push()` dalam *function* `_pushSaved`.
```
void _pushSaved() {
  Navigator.of(context).push(
  );
}
```
5. Selanjutnya kita akan menambahkan `MaterialPageRoute`
```
Add the code, as shown below:

void _pushSaved() {
  Navigator.of(context).push(
    MaterialPageRoute<void>(   // tambahkan 20 baris mulai dari sini...
      builder: (BuildContext context) {
        final Iterable<ListTile> tiles = _saved.map(
          (WordPair pair) {
            return ListTile(
              title: Text(
                pair.asPascalCase,
                style: _biggerFont,
              ),
            );
          },
        );
        final List<Widget> divided = ListTile
          .divideTiles(
            context: context,
            tiles: tiles,
          )
          .toList();
      },
    ),                       // ... sampai sini.
  );
}
```