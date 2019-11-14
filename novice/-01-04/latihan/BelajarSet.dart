class BelajarSet {
  Set numbers = new Set.from([1, 2, 3, 4]);
  Set numberSet = new Set();
  Set persons = new Set();

  void tampilkan() {
    print(numbers);

    numberSet.add(2);
    numberSet.add(4);
    numberSet.addAll([12, 44, 90]);
    print("default implementattion : ${numberSet.runtimeType}");

    persons.addAll(['Robi', 'Albert', 'Ari', 'Cahyo', 'Agung']);

    for (var no in numberSet) {
      print(no);
    }

    for (var person in persons) {
      print(person);
    }

    convertList(persons, 2);
  }

  void convertList(Set data, index) {
    var lists = [];
    persons.forEach((d) => lists.add(d));
    print(lists[index]);
  }
}
