void main() {
  // 1. Create an empty list of type String. Name it months. Use the add method to add the names of the twelve months.

  List<String> months = [];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');

  // 2. Make an immutable list with the same elements as in Mini-exercise 1.

  // final months = const['January','February','March','April','May','June','July','August','September','October','November','December'];

  // 3. Use collection for to create a new list with the month names in all uppercase.
  const m = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  // List<String>months = [for(var  month in m) month.toUpperCase(),];

  // 4. Create a map with the following keys: name, profession, country and city. For the values, add your own information.

  final map = {
    'name': 'Meet',
    'profession': 'Student',
    'country': 'India',
    'city': 'Nvs'
  };

  // 5. You suddenly decide to move to Toronto, Canada. Programmatically update the values for country and city.

  map['city'] = 'Toronoto';
  map['country'] = 'Canada';

  // 6. Iterate over the map and print all the values.

  map.forEach((key, value) => print('$key -> $value'));

  // 7. Given the following exam scores:
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  // i) Use sort to find the highest and lowest grades.
  // ii) Use where to find all the B grades, that is, all the scores between 80 and 90.
  scores.sort();
  final newScore = scores.where((element) => element > 80 && element < 90);
  print(scores); // [32, 46, 67, 77, 82, 88, 89, 93]
  print(newScore); // (82, 88, 89)
}