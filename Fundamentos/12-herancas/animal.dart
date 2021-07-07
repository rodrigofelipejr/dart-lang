//NOTE - Classe modelo

class Animal {
  String? idade;
  bool? docil;

  Animal(
    this.idade, {
    this.docil,
  });

  void dormir() {
    return print('Dorme como um Animal!');
  }
}
