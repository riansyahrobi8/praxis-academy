# [First App](https://flutter.dev/docs/get-started/codelab)
Klik link diatas untuk melihat contoh project flutter.

## Part 1
### Langkah 1: membuat aplikasi Flutter pertama
1. Mengganti konten pada *file* `lib/main.dart`
```
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```
--- 
**Tips**: Ketika menulis kode, biasanya tampilan kode tidak beraturan, kamu bisa memperbaiki secara otomatis dengan cara berikut:

- Android Studio / IntelliJ IDEA: Klik kanan pada kode, pilih Reformat Code dengan dartfmt.
- VS Code: Klik kanan kemudian pilih Format Document.
---

2. Jalankan `flutter run <nama_file.dart>` pada terminal atau `F5` pada editor VS Code tulisan `Hello World` akan berada tepat ditengah konten.
<p align="center">
<img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/kasus.png" width="300">
</p>

**Penjelasan:** <br/>
* Sintak ini `import 'package:flutter/material.dart';` berfungsi mengaambil semua material yang dibutuhkan dari sdk flutter.
* `void main() => runApp(MyApp());` sintak inilah yang akan dieksekusi oleh *compiler* pertama kali saat project dijalankan. Sintak ini menjalankan *widget* bernama MyApp yang merupakan *class* turunan dari *class* `StatelessWidget`. Mengenai *class* ini akan dibahas di project selanjutnya.
* `title: 'Welcome to Flutter'` baris ini merupakan nama dari aplikasi kita.
* Perubahan besar terjadi pada baris berikut
```
home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
```
dalam sdk flutter terdapat material design untuk android yang menampung *widget* `Scaffold` sebagai tampilan utamanya. Dalam *widget* ini secara umum terdapat 2 bagian yakni `appBar` dan `body`. Pada `appBar` terdapat properti `title` dari sebuah halaman atau *activity* kemudian pada `body` merupakan isi dari kontent yang ingin ditampilkan.
<br/>

### Langkah 2: Menggunakan paket eksternal
1. Tambahkan paket `english_words` versi `3.1.0` atau lebih tinggi ke dalam `pubspec.yaml`. Dokument `pubspec` berfungsi untuk mengatur assets dan dependency dari sebuah aplikasi Flutter.
<p align="center">
    <img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/pubspec.png">
</p>

2. Kemudian jalankan perintah `flutter pub get` pada terminal.
3. Pada `lib/main.dart` tambahkan paket baru yakni `import 'package:english_words/english_words.dart';`
<p align="center">
    <img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/importpackage.png">
</p>

4. Menggunakan paket yang telah diimport sebelumnya

```
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          // child: Text('Hello World'),
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
```
5. Jalankan kembali aplikasi secara *hot reload* atau dengan menekan logo petir.
<p align="center">
    <img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/kasus1.png" width="300">
    <img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/kasus2.png" width="300">
</p>

### Langkah 3: Menambahkan Statefull Widget
1. Ketik `stf` pilih yang statefull widget dengan menakan tombol tab kemudian ketik namanya *widget* `RandomWord`.
<p align="center">
    <img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/stf.png">
</p>

2. Ubahlah *widget* `RandomWordState` menjadi seperti berikut:
```
class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
```
3. Ubahlah *widget* `MyApp` menjadi seperti berikut:
```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}
```
4. Jalankan kembali aplikasinya dengan menekan tombol `F5`.
<p align="center">
    <img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/sc1.png" width="300">
    <img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/sc2.png" width="300">
</p>

### Langkah 4: Membuat infinite scrolling ListView
1. Menambahkan variabel static yakni `_suggestions` yang berisi `<WordPair>[]` array dari *widget* `WordPair` dan `_biggerFont` yang berisi ukuran *font* 18.0 bertipe konstanta.
```
class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  // ···
}
```
**Penjelesan:**
*Function* ini akan membuat sebuah *widget* `ListView` yang menyediakan properti *builder*. Dalam properti *builder* terdapat *itemBuilder* yang menggunakan 2 parameter yakni `_BuildContext` dan iterator baris ke `i`, dan mengembalikan *function* nilai balik anonim. Iterasinya dimulai dari nol dan selalu bertambah setiap kali *function* dipanggil. Bertambah 2 kali setiap `wordpair`, 1 kali untuk `ListTile` pada `_buildRow` dan 1 kali untuk `Divider`.
2. Menambahkan *function* `_buildSuggestions` pada *class* `RandomWordsState`.
```
Widget _buildSuggestions() {
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return _buildRow(_suggestions[index]);
      });
}
``` 
- /*1*/ 
3. Menambahkan *function* _buildRow() ke dalam *widget* `_RandomWordsState`