import 'package:lab5_tutorial1/lab5_tutorial1.dart' as lab5_tutorial1;

void main() {
  // Lists

  //Creating a list
  // var desserts = ['cookies', 'cupcakes', 'donuts','pie'];
  // Since all of the elements in this list are strings, Dart infers this to be a list of String types.

  // In this case, Dart simply infers it to be a list of dynamic.
  // var snacks = [];

  // If we're startinh with an empty list, we should specify the type like this
  // List<String> snacks = [];

  //slightly nicer syntax:-
  // var snacks = <String>[];

  // Printing lists
  //desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  //print(desserts);

  // Accessng elements
  //final secondElement = desserts[1];
  //print(secondElement);

  // If you know the value but don’t know the index, you can use the indexOf method to look it up:
  //final index = desserts.indexOf('pie');
  //final value = desserts[index];

  // Assigning values to list elements
  //desserts[1] = 'cake';

  //Adding elements to a list
  //desserts.add('brownies');
  //print(desserts);

  //Removing elements from a list
  //desserts.remove('cake');
  //print(desserts);

  //Mutable and immutable lists
//   final desserts = ['cookies', 'cupcakes', 'donuts'
// , 'pie'];
//   desserts = []; // not allowed
//   desserts = ['cake', 'ice cream']; // not allowed
//   desserts = someOtherList; // not allowed

  // Creating deeply immutable lists
  // const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts.add('brownie'); // not allowed
  // desserts.remove('pie'); // not allowed
  // desserts[0] = 'fudge'; // not allowed

  // final desserts = const ['cookies', 'cupcakes', 'donuts', 'pie'];

  // if we want an immutable list but you won’t know the element values until runtime, then you can create one with the List.unmodifiable named constructor:
  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);

  // List properties

  const drinks = ['water', 'milk', 'juice', 'soda'];

  //Accessing first and last elements

  // drinks.first // water
  // drinks.last // soda

  // Checking if a list contains any elements
  // drinks.isEmpty // false
  // drinks.isNotEmpty // true

  // drinks.length == 0 // false
  // drinks.length > 0 // true

  // Code as UI
  // Spread operator(...)

  const pastries = ['cookies', 'croissants'];
  //const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  //const desserts = ['donuts', ...pastries, ...candy];
  //print(desserts[2]);

  // null spread operator
  // There’s also a null spread operator(...?), which will omit a list if the list itself is null.
  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];

  // Collection if
  // we can use a collection if to determine whether an element is included based on some condition.

  const peanutAllergy = true;
  const candy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy);

  //Collection for
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);

  // Sets
  //final Set<int> someSet = {};
  // final someSet = <int>{};
  final anotherSet = {1, 2, 3, 1};
  print(anotherSet);

  // Operations on a set

  //Checking the contents
  print(anotherSet.contains(1)); // true
  print(anotherSet.contains(99)); // false

  // Adding single elements
  final someSet = <int>{};
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet);

  // Removing elements
  someSet.remove(2112);

  // Adding multiple elements
  someSet.addAll([1, 2, 3, 4]);

  // Intersections and Unions
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

  final intersection = setA.intersection(setB);
  print(intersection);

  final union = setA.union(setB);
  print(union);

  // Other operatiions
  bool add = false;
  final setT = {7, 8, if (!add) 9};
  print(setT);

  //Maps

  //Creatig an empty map
  final Map<String, int> emptyMap = {};

  //shorter way
  //final emptyMap = <String, int>{};

  final emptySomething = {};
  // Is emptySomething a set, or is it a map?

  // answer:- map literals came before set literals. So Dart infers the empty braces to be a Map. If we want a set then we need to be explicit:
  final mySet = <String>{};

  // Initializing a Map with values
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory);

  // Unique keys
  // final treasureMap = {
  //   'garbage': 'in the dumpster',
  //   'glasses': 'on your head',
  //   'gold': 'in the cave',
  //   'gold': 'under your mattress',
  // };

  // If we wanted to look both places then we could map String to List.
  final treasureMap = {
    'garbage': ['in the dumpster'],
    'glasses': ['on your head'],
    'gold': ['in the cave', 'under your mattress'],
  };

  // Operations on a map
  //Accessing elements from a map

  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes?.isEven);

  // Adding elements to a map
  inventory['brownies'] = 3;

  // Updating an element
  inventory['cakes'] = 1;

  // Removing elements from a map
  inventory.remove('cookies');

  // Map Properties
  // inventory.isEmpty // false
  // inventory.isNotEmpty // true
  // inventory.length // 4
  // inventory.keys; // (cakes, pies, donuts, brownies)
  // inventory.properties; // (1, 14, 37, 3)

  // Checking for key or value existence
  print(inventory.containsKey('pies')); // true
  print(inventory.containsValue(42)); // false

  // Looping over elements of a map
  // for (var item in inventory) {
  //   print(inventory[item]);
  // }
  // Error:- The type 'Map<String, int>' used in the 'for' lo op must implement Iterable.
  // Solution:-
  for (var item in inventory.keys) {
    print(inventory[item]);

    // higher order methods

    //Mapping over a collection
    const numbers = [1, 2, 3, 4];
    final squares = numbers.map((number) => number * number);
    print(squares); // (1,4,9,16)

    //filtering a collection

    final evens = squares.where((square) => square.isEven);
    print(evens); // (4,16)

    //Consolidating a collection
    //Using reduce

    // const amounts = [199, 299, 299, 199, 499];
    // final total = amounts.reduce((sum, element) => sum + element);
    // print(total); // 1495

    //Using fold

    const amounts = [199, 299, 299, 199, 499];
    final total = amounts.fold(
      0,
      (int sum, element) => sum + element,
    );

    //Sorting a list
    final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
    desserts.sort();

    //Reversing a list
    var dessertsReversed = desserts.reversed;

    print(desserts); // [brownies, cookies, donuts, pie]
    print(dessertsReversed); // (pie, donuts, cookies, brownies)

    //Performing a custom sort
    desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
    print(desserts); // [pie, donuts, cookies, brownies]

    //Combining higher order methods
    const dessert = ['cake', 'pie', 'donuts', 'brownies'];
    final bigTallDesserts = dessert
        .where((dessert) => dessert.length > 5)
        .map((dessert) => dessert.toUpperCase());
    print(bigTallDesserts); // (DONUTS, BROWNIES)

    
  }
}