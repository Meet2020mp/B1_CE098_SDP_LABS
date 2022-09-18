// 3. Create a class called User with properties for id and name. Make a List with three users, specifying any appropriate names and IDs you like. Then write a function that converts your user list to a list of maps whose keys are id and name.

class User {
  User(this.id, this.name);
  final int id;
  final String name;
}

const para =
    "There are many different kinds of animals that live in China.";

void main() {
  // 1. Write a function that takes a paragraph of text and returns a collection of unique String characters that the text contains.

  Set<String> uniqueString(String text) {
    return text.runes.map((code) => String.fromCharCode(code)).toSet();
  }

  print(uniqueString(para));

  // {T, h, e, r,  , a, m, n, y, d, i, f, t, k, s, o, l, v, C, .}

  // 2. Repeat Challenge 1, but this time have the function return a collection that contains the frequency, or count, of every unique character.

  Map<String, int> frequencyMap(String text) {
    final freq_map = <String, int>{};
    for (var txt in text.runes) {
      final char = String.fromCharCode(txt);
      final freq = freq_map[char] ?? 0;
      freq_map[char] = freq + 1;
    }
    return freq_map;
  }

  print(frequencyMap(para)); 
  // {T: 1, h: 3, e: 6, r: 3,  : 10, a: 6, m: 2, n: 6, y: 1, d: 2, i: 6, f: 3, t: 3, k: 1, s: 2, o: 1, l: 2, v: 1, C: 1, .: 1}

  // 3. 
  final users = [
    User(1, 'Meet'),
    User(2, 'MAP'),
    User(3, 'Meetkumar'),
  ];

  List<Map<String, Object>> usersToMapList(List<User> users) {
    final userMapList = <Map<String, Object>>[];
    for (var user in users) {
      final userMap = {
        'id': user.id,
        'name': user.name,
      };
      userMapList.add(userMap);
    }
    return userMapList;
  }

  print(usersToMapList(users)); // [{id: 1, name: Meet}, {id: 2, name: MAP}, {id: 3, name: Meetkumar}]
}