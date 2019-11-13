import 'Person.dart';

class Student extends Person {
  String nis;

  Student() {}

  void setNis(String nis) {
    this.nis = nis;
  }

  String getNis() {
    return nis;
  }

  @override
  void display() {
    // TODO: implement display
    super.display();
    print("Nomor induk sisiwa saya" + this.getNis());
  }
}
