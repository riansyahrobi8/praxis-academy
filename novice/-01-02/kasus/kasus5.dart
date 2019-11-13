// selection sort, mencari niilai minimum, kemudian tukar posisi terhadap index mulai dari 0
selection(a) {
  for (var i = 0; i < a.length - 2; i++) {
    var indexMin = i;
    for (var j = i + 1; j < a.length - 1; j++) {
      if (a[j] < a[indexMin]) indexMin = j;
    }
    if (indexMin != i) {
      var temp = a[i];
      a[i] = a[indexMin];
      a[indexMin] = temp;
    }
  }
  print(a);
}

main() {
  var A = [6, 65, 12, 34, 5];
  selection(A);
}
