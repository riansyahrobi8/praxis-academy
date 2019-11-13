main() {
  var A = [6, 65, 12, 34, 5];

  // selection sort, mencari niilai minimum, kemudian tukar posisi terhadap index mulai dari 0
  selection(a) {
    for (var i = 0; i < A.length - 2; i++) {
      var indexMin = i;
      for (var j = i + 1; j < A.length - 1; j++) {
        if (A[j] < A[indexMin]) indexMin = j;
      }
      if (indexMin != i) {
        var temp = A[i];
        A[i] = A[indexMin];
        A[indexMin] = temp;
      }
    }
    print(a);
  }

  selection(A);
}
