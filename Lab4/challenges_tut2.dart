import 'dart:math';

// 2. Create a class called Name with givenName and surname properties. Add a Boolean property called surnameIsFirst to keep track of this. Not everyone in the world has a surname.Add a toString method that prints the full name.

class Name {
  Name({
    required this.givenName,
    this.surname,
    this.surnameIsFirst = false,
  });

  final String givenName;
  final String? surname;
  final bool surnameIsFirst;

  @override
  String toString() {
    if (surname == null) {
      return givenName;
    }
    if (surnameIsFirst) {
      return '$surname $givenName';
    }
    return '$givenName $surname';
  }
}

void main() {
  // 1. Write a function that randomly returns 42 or null. Assign the return value of the function to a variable named result that will never be null. Give result a default of 0 if the function returns null.
  int? randomNothing() {
    final isTrue = Random().nextBool();
    return (isTrue) ? 42 : null;
  }

  final result = randomNothing() ?? 0;
  print(result);

  //2

  final tilak = Name(givenName: 'Tilak', surname: 'Sojitra');
  final Sojitratilak = Name(surname: 'Sojitra', givenName: 'Tilak', surnameIsFirst: true);
  final ts = Name(givenName: 'Tilak');

  print(tilak);
  print(Sojitratilak);
  print(ts);
}