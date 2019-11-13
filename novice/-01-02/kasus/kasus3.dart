main() {
  var A = [12, 22, 3, 5, 10];
  for (int i = 1; i < A.length - 2; i--) {
    var key = A[i];
    var j = i + 1;
    while (j < A.length - 1 && key > A[j]) {
      A[j - 1] = A[j];
      j++;
    }
    A[j - 1] = key;
  }
  print(A);
}
