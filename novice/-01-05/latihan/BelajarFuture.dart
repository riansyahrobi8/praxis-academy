import 'dart:math';

// ======================================================================
// belajar future dengan beberapa functions
Future<String> firstAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "First!";
}

Future<String> secondAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "Second!";
}

Future<String> thirdAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "Third!";
}
// ======================================================================

// ======================================================================
// belajar future dengan menambahkan sebuah class
class Employee {
  int id;
  String firstName, lastName;

  Employee(this.id, this.firstName, this.lastName);
}

Future<Employee> getEmployee(int id) async {
  await Future<Employee>.delayed(const Duration(seconds: 2));
  var e = Employee(id, "Joe", "Coder");
  return e;
}
// ======================================================================

// ======================================================================
Future<bool> isPrimeNumber(int number) async {
  if (number == 1) return false;
  if (number == 2) return true;

  double mySqrt = sqrt(number);
  int limit = mySqrt.ceil();

  for (int i = 2; i <= limit; i++) {
    if (number % i == 0) return false;
  }

  return true;
}
// ======================================================================

// ======================================================================
// belajar future dengan contoh random number dan mencari nilai terkecil dari 3 nilai
Future<int> getRandomNumber() async {
  var random = new Random();
  return random.nextInt(100);
}

void findSmallestNumberInList(List<int> list) {
  print("All numbers are in : ");
  list.forEach((l) => print(l));
  list.sort();
  int largest = list.first;
  print("The smallest rando # we generated was: ${largest}");
}
// ======================================================================

// ======================================================================
// belajar future dengan Exception handling
Future<void> openFile(String fileName) async {
  throw new Exception("Boom!");
}
// ======================================================================

void main() async {
  // ======================================================================
  Future.delayed(
    const Duration(seconds: 3),
    () => 50,
  ).then((nilai) {
    print('Nilainya adala $nilai');
  });
  print('Menunggu nilai.......');
  // ======================================================================

  // ======================================================================
  var f = await firstAsync();
  print(f);
  var s = await secondAsync();
  print(s);
  var t = await thirdAsync();
  print(t);
  print('done');
  // ======================================================================

  // ======================================================================
  print('getting employee...');
  var x = await getEmployee(33);
  print("Got back ${x.firstName} ${x.lastName} with id# ${x.id}");

  await Future.forEach(
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      (int n) => isPrimeNumber(n)
          .then((x) => print("${n}${x ? " is" : " is not"} a prime number")));

  print('done!');
  // ======================================================================

  // ======================================================================
  Future.wait([getRandomNumber(), getRandomNumber(), getRandomNumber()])
      .then((List<int> results) => findSmallestNumberInList(results));
  // ======================================================================

  // ======================================================================
  try {
    var result = await openFile("The File");
    print("succcess!");
  } catch (e) {
    print("Looks like we caught an error: ${e.toString()}");
  }
}
