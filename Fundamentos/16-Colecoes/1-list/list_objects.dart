import 'models/models.dart';

main() {
  print('List - Manipulando objetos\n');

  People p1 = People('Rodrigo', 'Felipe', identity: 55555555);
  People p2 = People('João', 'Carlos', identity: 33333333);

  List<People> manyPeople = [p1, p2];
  manyPeople.add(People('Richard', 'Souza'));

  for (var i = 0; i < manyPeople.length; i++) {
    print('for: ${manyPeople[i].name} ${manyPeople[i].surname} - id:${manyPeople[i].identity}');
  }

  print('');
  for (var people in manyPeople) {
    print('for: ${people.name} ${people.surname} - id:${people.identity}');
  }

  print('');
  manyPeople.forEach((people) => print('for: ${people.name} ${people.surname} - id:${people.identity}'));

  print('List ordenando objects\n');

  List<Seller> sellers = [];
  sellers.add(
    Seller(
      'Rodrigo',
      [
        Sale('iPhone 11', 4199),
        Sale('Galaxy S21', 3800.25),
        Sale('MacBook Pro', 5300),
      ],
    ),
  );

  sellers.add(
    Seller(
      'João',
      [
        Sale('Galaxy S21', 3800.25),
        Sale('iPhone 12', 6999),
      ],
    ),
  );

  sellers.add(
    Seller(
      'Silva',
      [
        Sale('MacBook Pro', 10900),
        Sale('Galaxy S21', 3800.25),
      ],
    ),
  );

  //NOTE - organizar lista de vendas pela soma total
  sellers.sort(
    (b, a) => a.sales.fold<double>(0, (p, c) => p + c.price).compareTo(
          b.sales.fold<double>(0, (p, c) => p + c.price),
        ),
  );

  //NOTE - organizar as vendas de cada vendedor
  sellers.forEach((seller) => seller.sales.sort((b, a) => a.price.compareTo(b.price)));

  sellers.forEach((seller) {
    print('Vendedor: #${seller.name} \t ${seller.sales.length} vendas \t' +
        'Totalizando: R\$ ${seller.sales.fold<double>(0, (p, c) => p += c.price)} \t' +
        'Vendas: ${seller.sales.map((e) => e.price)}');
  });

  print('List - Escopo de loops em objetos\n');

  List<Owner> owners = [];
  owners.add(
    Owner(
      'Rodrigo',
      'Rua dos Tolos',
      [
        Car(
          'GM',
          'Celta',
          'abc1234',
          Features('Passeio', 5, 130, 'Gasolina'),
          tickets: [
            TrafficTicket('Excesso de velocidade', 'Gravíssima', 7),
            TrafficTicket('Estacionar em local proibido', 'Grave', 5),
          ],
        ),
        Car(
          'Fiat',
          'Pálio',
          'ddf4567',
          Features('Passeio', 5, 103, 'Gasolina'),
          tickets: [
            TrafficTicket('Excesso de velocidade', 'Gravíssima', 7),
            TrafficTicket('Excesso de velocidade', 'Grave', 5),
          ],
        ),
      ],
    ),
  );

  owners.add(
    Owner(
      'Felipe',
      'Rua dos Tolos',
      [
        Car(
          'GM',
          'Celta',
          'abc1234',
          Features('Passeio', 5, 130, 'Gasolina'),
          tickets: [
            TrafficTicket('Excesso de velocidade', 'Gravíssima', 7),
            TrafficTicket('Estacionar em local proibido', 'Grave', 5),
          ],
        ),
        Car(
          'Fiat',
          'Pálio',
          'ddf4567',
          Features('Passeio', 5, 103, 'Gasolina'),
          tickets: [
            TrafficTicket('Excesso de velocidade', 'Gravíssima', 7),
            TrafficTicket('Excesso de velocidade', 'Grave', 5),
          ],
        ),
      ],
    ),
  );

  // owner.forEach((e) => e.cars.forEach((e) => e.tickets.sort((a, b) => a.points.compareTo(b.points))));

  owners.sort((b, a) => b.name.compareTo(a.name));

  for (var i = 0; i < owners.length; i++) {
    var cars = owners[i].cars;
    for (var car in cars) {
      car.tickets.forEach((e) {
        print(
            '${owners[i].name} \t ${car.model} ${car.features.type} \t ${e.description} - ${e.type} - ${e.points} pontos');
      });
    }
  }
}
