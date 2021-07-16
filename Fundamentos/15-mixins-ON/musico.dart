import 'acao.dart';
import 'artista.dart';
import 'cantor.dart';
import 'dancarino.dart';

class Musico extends Artista with Dancarino, Cantor implements Acao {
  //NOTE - comente os mixins para ver a hierarquia de sobrescritas
  @override
  void executar() {
    super.acao();
    acao();
  }

  void acao() => print('Compõe\n');
}
