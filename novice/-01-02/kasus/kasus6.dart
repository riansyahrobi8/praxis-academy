findMatch(A, B) {
  for (var i = 0; i < A.length - 1; i++) {
    for (var j = 0; j < B.length - 1; j++) {
      if (A[i] = B[j]) return true;
      return false;
    }
  }
}

main() {
  var A = [1, 2, 12, 44, 3];
  var B = [1, 2, 12, 44, 3];
  print(findMatch(A, B));
}
