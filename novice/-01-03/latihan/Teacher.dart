import 'Person.dart';

class Teacher extends Person {
  String job;

  Teacher(String name, String address, int age, String job) {
    this.name = name;
    this.address = address;
    this.age = age;
    this.job = job;
  }

  @override
  void display() {
    // TODO: implement display
    super.display();
    print("Pekerjaan saya adalah seorang " + this.job);
  }
}
