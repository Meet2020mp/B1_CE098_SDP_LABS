import 'package:lab4_tutorial1/lab4_tutorial1.dart' as lab4_tutorial1;
import 'user.dart';

// Defining a class
// Constructors

// Challenge-1
class Student {
  final String firstName;
  final String lastName;
  int grade;
  Student(this.firstName, this.lastName, this.grade);

  @override
  String toString() {
    return 'Name:- $firstName $lastName\nGrade:- $grade';
  }
}

// Challenge-2

class Sphere {
  static const pi = 3.14;
  final radius;

  const Sphere({required this.radius}) : assert(radius > 0);

  double get surface => 4 * Sphere.pi * radius * radius;
  double get volume => (4 / 3) * Sphere.pi * radius * radius * radius;
}

// Mini-exercise 1,2,3
class Password {
  String value = "";

  @override //Annotation
  String toString() {
    return 'User(value: $value)';
  }

  isValid() {
    if (value.length > 8) {
      return true;
    }
  }
}

void main() {
  // Classes

  // Creating an object from a class
  final user = User();

  //Challenge 1
  final s1 = Student('Bert', 'abc', 95);
  final s2 = Student('Ernie', 'xyz', 85);
  print(s1);
  print(s2);

  //Challenge 2
  final S = Sphere(radius: 12);
  print(S.surface.round());
  print(S.volume.round());

  //Optional keyword new
  // final user = new User();

  //Assigning values to properties
  // Error:- The setter '_name' isn't defined for the type 'User.'
  // user._name = "Meet";
  // user._id = 133;

  //Printing an Object
  print(user);
  // Without overriding toString Instance of 'User'
  // User(id: 133, name: Meet)

  // Serilization:- Serialization is the process of converting a complex data object into a string.

  print(user.toJson());
  // {"id":133,"name":"Meet"}

  // Cascade notation
  // final user1 = User()
  //   .._name = 'TS'
  //   .._id = 133;

  final pwd = Password()..value = "123456789";

  print(pwd.isValid()); // true

  // Optional and names parameters
  // MyClass([this.myProperty]); or
  //  MyClass({this.myProperty});

  // way to create anonymous user using named parameter
  // final user2 = User(_id: 42, _name: 'Ray');

  //for enabling assertion :- dart --enable-asserts filename
  //Error:- Failed assertion: line 27 pos 14: 'id >= 0': isnot true.
  final jb = User(id: -1, name: 'JB Lorenzo');

  // const user = User(id: 42, name: 'Ray');
  const anonymousUser = User.anonymous();

  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
}