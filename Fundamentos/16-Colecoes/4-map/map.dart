/**
 * Conceito - Map
 * - o Map é uma coleção dinamica e customizável de chaves e valores entre {}
 * - As chaves são únicas e os valores são se repetem 
 */

linkedHashMap() {
  print('LikedHashMap == Map\n');

  List<String> names = ['Rodrigo', 'Felipe'];
  Map<int, String> namesMap = names.asMap();

  print('\n$namesMap');

  namesMap.forEach((key, value) => print('key: $key - value: $value'));

  Map<String, dynamic> frutas = Map();
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde';
  frutas['goiaba'] = 'amarela';
  frutas['maca'] = 'vermelho';
  print('\n$frutas');

  print(frutas.containsKey('banana'));
  print(frutas.containsValue('azul'));
  frutas.clear();
  // frutas[null] = null;

  Map<String, dynamic> user = Map.from({'name': 'Rodrigo', 'age': 28, 'weight': 60});
  print('\n$user');
  user.update('name', (value) => '$value Felipe');
  user.update('age', (value) => ++value);
  print(user);

  //NOTE - caso a chave 'peso' não exista, com ifAbsent podemos fazer um tratamento específico
  user.update('weight', (value) => 70, ifAbsent: () => 'undefined');
  print(user);

  user.removeWhere((key, value) => key == 'weight' && value == 70);
  print(user);
  user.update('weight', (value) => 70, ifAbsent: () => 'undefined');
  print(user);

  user.putIfAbsent('height', () => 1.70);
  print(user);

  user.addAll({'sex': 'masculino', 'married': true});
  print(user);
  print('keys: ${user.keys} \nvalues: ${user.values}');

  print('');

  Map<int, String> numbers = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numbers);
  print(numbers.map((key, value) => MapEntry(key, '${value.toUpperCase()}')));
  for (var key in numbers.keys) {
    print('forIn: $key');
  }
  for (var value in numbers.values) {
    print('forIn: $value');
  }
  for (var key in numbers.keys) {
    final value = numbers[key];
    print('forIn: key: $key - value: ${value!.toUpperCase()}');
  }
}

main() {
  linkedHashMap();
}
