main() {
  var A = [12, 23, 22, 10, 2];

  min_max(a) {
    var min = a[0];
    var max = a[0];
    for (var i = 1; i <= A.length - 1; i++) {
      if (a[i] < min) {
        min = a[i];
      }
      if (a[i] > max) {
        max = a[i];
      }
    }
    print("$min $max");
  }

  min_max(A);
}
