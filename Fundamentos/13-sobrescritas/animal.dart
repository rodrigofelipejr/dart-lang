abstract class Animal {
  String idade;
  bool? docil;
  late bool coluna;

  Animal.vertebrados(this.idade, {this.docil}) {
    this.coluna = true;
  }

  Animal.invertebrado(this.idade, {this.docil}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dorme como um Animal!');
  }
}
