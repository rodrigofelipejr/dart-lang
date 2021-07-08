import 'animal.dart';

class Artropodes extends Animal {
  bool asas;

  Artropodes.insetos(this.asas, idade, {docil}) : super.invertebrado(idade, docil: docil);
  Artropodes.aracnideos(this.asas, idade, {docil}) : super.invertebrado(idade, docil: docil);
  Artropodes.crustaceos(this.asas, idade, {docil}) : super.invertebrado(idade, docil: docil);
}
