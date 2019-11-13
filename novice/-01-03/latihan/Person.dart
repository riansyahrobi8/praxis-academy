class Person {
  String name, address;
  int age;

  Person() {}

  // Person(String name, String address, int age) {
  //   this.name = name;
  //   this.address = address;
  //   this.age = age;
  // }

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  void setAddress(String address) {
    this.address = address;
  }

  String getAddress() {
    return address;
  }

  void setAge(int age) {
    this.age = age;
  }

  int getAge() {
    return age;
  }

  void display() {
    print("Nama saya adalah " +
        getName() +
        ",\nUsia saya " +
        getAge().toString() +
        " tahun.\nSaya bertempat tinggal di " +
        getAddress());
  }
}
