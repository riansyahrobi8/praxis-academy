// index_equal_value(t, st, end) {
//   if (st > end) {
//     return -1;
//   }

//   double mid = (st + end) / 2;
//   if (t[mid] > mid) {
//     return index_equal_value(t, st, mid - 1);
//   } else if (t[mid] < mid) {
//     return index_equal_value(t, mid + 1, end);
//   } else {
//     return mid;
//   }
// }

index_equel_value(t) {
  //t = [2, 3, 12];
  dynamic s = 1;
  dynamic end = t.length;
  while (s <= end) {
    dynamic mid = (s + end) / 2;
    if (t[mid] == mid) {
      return mid;
    } else if (t[mid] > mid) {
      end = mid - 1;
    } else if (t[mid] < mid) {
      s = mid + 1;
    }
    return -1;
  }
}

main() {
  var A = [11, 1, 22, 12, 21];
  print(index_equel_value(A));
  //print(index_equal_value(2, 3, 4));
}
