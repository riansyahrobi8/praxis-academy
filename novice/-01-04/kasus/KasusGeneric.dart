class KasusGeneric<T> {
  T ob;

  KasusGeneric(T o) {
    ob = o;
  }

  T getOb() {
    return ob;
  }

  void showType() {
    print("Type of T is " + ob.runtimeType.toString());
  }
}

main() {
  // buat sebuah refensi Generik untuk Integers
  KasusGeneric<int> iOb = new KasusGeneric<int>(88);
  iOb.showType();

  // casting dibutuhkan
  int v = iOb.getOb();
  print("Value : " + v.toString());

  // buat sebuah generic untuk String
  KasusGeneric<String> strOb = new KasusGeneric<String>("Generic Test");
  strOb.showType();

  String str = strOb.getOb();
  print("Value : " + str);
}
