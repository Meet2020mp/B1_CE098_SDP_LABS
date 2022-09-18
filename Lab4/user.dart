

class User {
  final int _id;
  final String _name;

  // Long-form constructor
  // User(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  // }

  //Short-form constructor
  // User(this.id, this.name);

  // Named constructor
  // Forwarding constructors
  // User.anonymous() : this(0, 'anonymous');

  // Adding named parameters for User
  // User({this._id = 0, this._name = 'anonymous'});
  // User.anonymous() : this();

  // initializer list

  // User({int id = 0, String name = 'anonymous'})
  //   : assert(id >= 0), assert(name.isNotEmpty),
  //   _id = id,
  //   _name = name;

  // Making class immutable
  const User({int id = 0, String name = 'anonymous'})
    : assert(id >= 0),
    _id = id,
    _name = name;
  const User.anonymous() : this();

  //Factory constructors
  factory User.ray() {
    return User(id: 42, name: 'Ray'); 
  }

  // make fromJson using factory constructor
  factory User.fromJson(Map<String, Object> json)
  {
    final userId = json['id'] as int;
    final userName = json['name'] as String; return
    User(id: userId, name: userName);
  }

  // Adding a JSON serialization method
  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }

  @override //Annotation
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}