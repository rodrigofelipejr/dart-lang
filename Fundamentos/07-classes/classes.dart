import 'account.dart';
import 'people.dart';
import 'user.dart';

///
/// Classes > Objetos -
/// Varáveis > Atributos -
/// Funções > Métodos -
///

main() {
  print('Classes (objetos)\n');

  People peopleA = People();
  peopleA.name = 'Rodrigo';
  peopleA.age = 28;

  print('Name: ${peopleA.name} - Age: ${peopleA.age}');

  People peopleB = People();
  peopleB.name = 'Felipe';
  peopleB.age = 31;

  //NOTE - Operador em cascata - permite emitir várias chamadas por meio de um objeto
  var peopleC = People();
  peopleC
    ..name = 'Junior'
    ..age = 23
    ..info();

  print('Name: ${peopleB.name} - Age: ${peopleB.age}');

  User user = User();
  user.user = 'fma@gmail.com';
  user.password = '12345';
  user.auth();

  Account account = Account();
  print('Nome: ${account.name} - Conta: ${account.numberAccount} - Saldo: ${account.balance}');
  account.calculateSalary(950, 150, 2);
  account.deposit(150);
  account.withdraw(50);
}
