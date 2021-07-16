import 'acao.dart';
import 'dancarino.dart';

//NOTE - a classe Mc não pode cantar porque não extends de Artista
class Mc with Dancarino implements Acao {
  @override
  void executar() {
    super.acao();
    acao();
  }

  void acao() => print('Mixa.. bota o batidão...');
}
