class People {
  static final Map<String, People> _people = Map();
  final String name;
  int? age;
  double? weight;

  factory People(String name, {int? age, double? weight}) {
    if (_people.containsKey(name)) return _people[name]!;
    final newPeople = People._(name, age, weight);
    _people[name] = newPeople;
    return newPeople;
  }

  People._(this.name, this.age, this.weight) {
    // initial configs here...
  }

  static void showDetails(String name) {
    if (_people.containsKey(name)) {
      final people = _people[name];
      print('DETAILS: Name: $name Age: ${people!.age} Weight: ${people.weight}');
    }
  }

  static void updateDetails(String name, {int? age, double? weight}) {
    if (_people.containsKey(name)) {
      final people = _people[name];
      people?.age = age ?? people.age;
      people?.weight = weight ?? people.weight;

      print('DETAILS: Name: $name Age: ${people!.age} Weight: ${people.weight}');
    }
  }

  static void showPeople() {
    print('People: $_people');
    _people.forEach((key, value) => print('ForEach: $key: ${value.age}, ${value.weight}'));
  }

  @override
  String toString() {
    return '$name: $age';
  }
}
