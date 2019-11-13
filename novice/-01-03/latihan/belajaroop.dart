import 'dart:math';

import 'Person.dart';
import 'Student.dart';
import 'Teacher.dart';

class Point {
  num x, y;

  // Point(num x, num y) {
  //   this.x = x;
  //   this.y = y;
  // }

  Point(this.x, this.y);
  // Point.origin() {
  //   x = 0;
  //   y = 0;
  // }

  // Point.fromJason(Map<String, num> json)
  //     : x = json['x'],
  //       y = json['y'] {
  //   print("In Point.fromJson() : ($x, $y)");
  // }

  num distanceTo(Point point) {
    var dx = x - point.x;
    var dy = y - point.y;
    return sqrt((dx * dx) + (dy * dy));
  }
}

void main() {
  // var point = Point(2, 4);
  // var point = Point.origin();
  var point = new Point(4, 3);
  point.distanceTo(point);
  print("Nilai X adalah ${point.x} dan nilay Y adalah ${point.y}");

  Person persons = new Person();
  persons.setName("Robi Dahariansyah");
  persons.setAddress("Jl. Sorowajan gg Tempuyung");
  persons.setAge(23);
  persons.display();

  Student students = new Student();
  students.setName("Muhammad Fahri");
  students.setAddress("Jl. Klaten");
  students.setAge(16);
  students.setNis("1243342132");
  students.display();

  Teacher teachers =
      new Teacher("Pak Bambang", "Jl. Kaliurang", 46, "Dosen RPL");
  teachers.display();
}
