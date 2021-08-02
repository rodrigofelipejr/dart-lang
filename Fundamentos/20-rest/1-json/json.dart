/**
 * Conceito
 * - Representação State Transfer (Transferência representacional de Estado)
 * - É uma arquitetura que define um conjunto de restrições na criação de web services
 * - É uma padronização para que múltiplas aplicações possam se comunicar usando protocolo HTTP
 */

import 'dart:convert';

import 'list_users.dart';
import 'user.dart';

/**
 * SERIALIZAÇÃO MANUAL - Biblioteca JSON integrada ao dart 'dart:convert'
 * * Serialização JSON direta
 *  - Perdemos recursos estáticos da linguagem
 *  - Segurança de tipo, autocompletar e exceção em tempo de compilação
 */

conversaoDireta() {
  print('JSON - Conversão Direta\n');

  String jsonData = '''
    {
      "name": "Rodrigo",
      "age": 28,
      "email": "r@gmail.com"
    }
  ''';

  //NOTE - DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson');

  String name = parsedJson['name'];
  int age = parsedJson['age'];
  String email = parsedJson['email'];
  print('USO DIRETO: name: $name - age: ${parsedJson['age']} - email: $email\n');

  //NOTE - ENCODE
  Map<String, dynamic> map = {'name': name, 'age': age, 'email': email};
  String toJson = jsonEncode(map);
  print('toJson: $toJson\n');
}

/**
 * Serialização JSON em Objeto
 * - Utiliza recursos estáticos da linguagem
 * - Segurança de tipo, autocompletar e exceções em tempo de compilação
 */

conversaoObjeto() {
  print('JSON - Conversão Objeto\n');

  String jsonData = '''
   [
    {
      "name": "Rodrigo",
      "age": 28,
      "email": "r@gmail.com"
    },
    {
      "name": "Felipe",
      "age": 25,
      "email": "f@gmail.com"
    }
    ]
  ''';

  //NOTE - DECODE

  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson');
  var listUsers = ListUsers.fromJson(parsedJson);
  User user = listUsers.users.singleWhere((e) => e.name == 'Rodrigo');
  print('USO OBJETO: age: ${listUsers.users[0].age} - email: ${listUsers.users[0].email} - name: ${user.name}');

  var newUser = User.fromJson('{"name": "Junior", "age": 11, "email": "j@gmail.com"}');
  listUsers.users.add(newUser);
  print('$listUsers\n');

  // ENCODE
  List<dynamic> list = listUsers.toJson();
  print('$list\n');

  String toJson = json.encode(list);
  print('$toJson\n');
}

main() {
  conversaoDireta();
  conversaoObjeto();
}
