import 'package:project/project.dart' as project;

///
/// * Assert
/// - Usa lógica boleana para testar afirmações n modo debug
/// - Try/Catch pode ser usado para tratar a exceção
///
/// * Test
/// - Certifique-se de ter o package "test" em "dev_dependencies" no arquivo pubspec.yaml
/// - Atualize os packages no terminal usando "pub get"
/// - Podemos testar variáveis, funções e efetuar teste em grupo
///
/// * Sintaxe
/// test("Descrição", (){
///   expect(valorReal, valorEsperado);
/// })
///

void main(List<String> arguments) {
  print('Testes unitários\n');

  print('Hello world: ${project.calculate()}!');
  print('Listar Nomes: ${project.converterEmLista('Rodrigo Felipe')}');
  print('Verificar a maioridade: ${project.maioridade(17)}');
  print('Recuperar nome: ${project.recuperarNome(['Rodrigo', 'Felipe'])}');
  print('Resto da divisão: ${project.restoDivisao(12, 3)}');

  //NOTE - fora do try/catch gera uma exception
  String? text;
  assert(text == null);

  try {
    var telefone = '123456789';
    assert(telefone.length == 9, 'O telefone deve conter 9 dígitos');
  } catch (e) {
    print('Exception: $e');
  }
}
