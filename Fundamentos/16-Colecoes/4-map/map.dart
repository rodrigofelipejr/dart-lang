/**
 * Conceito - Map
 * - o Map é uma coleção dinamica e customizável de chaves e valores entre {}
 * - As chaves são únicas e os valores são se repetem 
 */

linkedHashMap() {
  print('Map - LikedHashMap == Map\n');

  List<String> names = ['Rodrigo', 'Felipe'];
  Map<int, String> namesMap = names.asMap();

  print('$namesMap');

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
  print('');
}

/**
 * Conceito - Map
 * - Map transforma /seleciona os elementos de uma coleção criando uma nova do mesmo tamanho
 */

mapMap() {
  print('Map - Map\n');

  List<Map<String, dynamic>> cart = [
    {'name': 'Borracha', 'price': 3.45},
    {'name': 'Caderno', 'price': 13.9},
    {'name': 'Livro', 'price': 41.22},
    {'name': 'Caneta', 'price': 7.5},
  ];

  // closure
  Function percentage(discount) => (value) => discount * value['price'];

  final coin = (e) => 'R\$ ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  List<String> prices1 = cart.map((e) => percentage(0.9)(e)).map(coin).toList(); //NOTE - closure
  List<String> prices2 = cart.map((e) => e.update('price', (value) => value * 0.9)).map(coin).toList();
  print('Lista de preços 1: $prices1');
  print('Lista de preços 2: $prices2');

  final double averagePrice = cart.map((e) => e['price']).reduce((p, c) => p += c) / cart.length;
  print('Preço médio: ${averagePrice.toStringAsFixed(2)}\n');

  List<Map<String, Object>> school = [
    {
      'name': 'Turma T1',
      'students': [
        {'name': 'Rodrigo', 'grade': 8.1},
        {'name': 'Felipe', 'grade': 9.3},
      ]
    },
    {
      'name': 'Turma T2',
      'students': [
        {'name': 'João', 'grade': 8.9},
        {'name': 'Souza', 'grade': 7.3},
      ]
    },
  ];

  // List<dynamic> studentsSchool =
  //     school.map((e) => e['students'] as List).expand((e) => e).map((e) => e['grade']).toList();

  List<dynamic> studentsSchool = school.map((e) => e['students'] as List).expand((e) => e).toList();
  print('Lista ordenada: $studentsSchool');

  studentsSchool.sort((b, a) => b['grade'].compareTo(a['grade']));
  print('Lista ordenada: $studentsSchool');

  double averageGrade = studentsSchool.map((e) => e['grade']).reduce((p, c) => p + c) / studentsSchool.length;
  print('Media as notas: ${averageGrade.toStringAsFixed(1)}\n');

  studentsSchool.forEach((e) => print('${e['name']}: ${e['grade']}'));
  print('');
}

/**
 * Conceito - Every
 * - Every realiza o teste em 'todos' os elementos com o operador lógico && retornando (true ou false)
 */

everyMap() {
  print('Map - Every\n');

  List<Map<String, dynamic>> people = [
    {'name': 'Leandro', 'age': 60},
    {'name': 'Lucas', 'age': 33},
    {'name': 'Lucio', 'age': 17}
  ];

  print(people.every((e) => e.containsKey('name')));
  print(people.every((e) => e['age'] >= 17));
  print(people.every((e) => e['age'] > 17));

  bool maiores = people.every((e) => e['name']!.toString().startsWith('L'));
  print('$maiores\n');
}

/**
 * Conceito - Where
 * - O Where filtra os elementos da coleção, criando uma nova do mesmo tamanho ou coleção menor
 */

whereMap() {
  print('Map - Where\n');

  List<Map<dynamic, dynamic>> products = [
    {'name': 'Notebook', 'price': 2499, 'fragile': true},
    {'name': 'iPad', 'price': 4199, 'fragile': true},
    {'name': 'iPhone', 'price': 2299, 'fragile': true},
    {'name': 'Magic mouse', 'price': 299, 'fragile': false}
  ];

  final fragile = (e) => e['fragile'] == true;
  final name = (e) => e['name'];

  List<dynamic> result = products.where(fragile).map(name).toList();
  print(result);

  List<Map<String, dynamic>> people = [
    {'name': 'Rodrigo', 'age': 37},
    {'name': 'Felipe', 'age': 31},
    {'name': 'Roger', 'age': 17},
  ];

  List<Map<String, dynamic>> maiores = people.where((e) => e['age'] >= 21).toList();
  print('Maiores: $maiores');

  Map<String, dynamic> startR = people.firstWhere((e) => e['name'].toString().startsWith('R'), orElse: () => {});
  print('Inicia com R: $startR');

  Map<String, dynamic> menores = people.singleWhere((e) => e['age'] < 18);
  print('Menores: $menores');

  final Function(Map<String, dynamic>) ages = (e) => e['age'];
  final Function(dynamic, dynamic) sum = (p, c) => p + c;
  final average = people.map(ages).reduce(sum) / people.length;
  print('Average: ${average.toStringAsFixed(0)}');
}

main() {
  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
}
