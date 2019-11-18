import 'dart:async';

main(List<String> args) {
  // membuat controller
  StreamController stream = StreamController();
  stream.stream.listen((data) {
    print('data : ${data}');
  });

  for (var i = 1; i <= 5; i++) {
    stream.sink.add(i);
  }

  stream.sink.close();
}
