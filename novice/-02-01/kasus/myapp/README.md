# [First App](https://flutter.dev/docs/get-started/codelab)
Klik link diatas untuk melihat contoh project flutter.

## Part 1
### Langkah 1
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

--- 
**Tips**: Ketika menulis kode, biasanya tampilan kode tidak beraturan, kamu bisa memperbaiki secara otomatis dengan cara berikut:

- Android Studio / IntelliJ IDEA: Klik kanan pada kode, pilih Reformat Code dengan dartfmt.
- VS Code: Klik kanan kemudian pilih Format Document.
---

2. Jalankan `flutter run <nama_file.dart>` pada terminal atau `F5` pada editor VS Code tulisan `Hello World` akan berada tepat ditengah konten.
<div style="text-align: center">
<img src="https://github.com/riansyahrobi8/praxis-academy/blob/master/novice/-02-01/kasus/gambar/kasus.png" width="300">
</div>

### Langkah 2