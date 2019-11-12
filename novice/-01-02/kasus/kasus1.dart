main() {
  var arrayAngka = [23, 54, 11, 32, 879, 2];
  for (int i = 1; i <= arrayAngka.length - 1; i++) {
    // berapa kali diulang
    int key, j;
    key = arrayAngka[i];
    j = i;
    while (j > 0 && arrayAngka[j - 1] > key) {
      // logic perurutan
      arrayAngka[j] = arrayAngka[j - 1];
      j = j - 1;
    }
    arrayAngka[j] = key;
  }
  print(arrayAngka);
}
