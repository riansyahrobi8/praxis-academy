import 'dart:convert';
import 'dart:io';
import 'dart:async';

main() async {
  await printUser();
  var file = File('ambil.txt');
  var contents;

  if (await file.exists()) {
    // read file
    contents = await file.readAsString();
    // print(contents);

    // write file
    await File('ambil-copy.txt').writeAsString(contents);
    // print(await fileCopy.exists());
    // print(await fileCopy.length());
  }
}

Future<void> printUser() async {
  String x = "";
  var request = await HttpClient()
      .getUrl(Uri.parse('https://jsonplaceholder.typicode.com/users/'));
  var respone = await request.close();

  // transforms and prints the respone
  await for (var content in respone.transform(Utf8Decoder())) {
    x = x + content;
  }
  await File('ambil.txt').writeAsString(x);
  print('files');
}
