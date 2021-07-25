import 'models/models.dart';

main() {
  print('Map - Object\n');

  Car c1 = Car('Toyota', 'Corolla');
  Car c2 = Car('Honda', 'Civic');
  Car c3 = Car('Fiat', 'Palio');

  Map<String, Car> cars = {
    '0': c1,
    '1': c2,
  };

  cars['2'] = c3;

  //NOTE - se ordenado por STRING ou NUM podemos utilizar o for
  for (var i = 0; i < cars.length; i++) {
    print('for: $i - ${cars["${i}"]?.model}');
  }
  print('');

  for (var key in cars.keys) {
    final car = cars[key];
    print('forIn: $key ${car?.model}');
  }
  print('');

  cars.forEach((key, value) => print('forEach: $key ${value.model}'));
  print('');

  print('Map - Singleton\n');
  People p1 = People('Rodrigo', age: 28, weight: 60);
  People p2 = People('Caroline', age: 31, weight: 63);

  People('Rodrigo', age: 65);
  People('Caroline', age: 60);
  People('Silva');

  People.showPeople();

  p1.weight = 63;
  People.showDetails('Rodrigo');

  p2.weight = 61.1;
  People.updateDetails('Silva', age: 22, weight: 77.3);

  People.showPeople();
}
