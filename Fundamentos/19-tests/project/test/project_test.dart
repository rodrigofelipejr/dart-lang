import 'package:project/project.dart';
import 'package:test/test.dart';

void main() {
  //NOTE - testes em variáveis
  test('converter String em Array', () {
    var text = 'Rodrigo,Felipe,Junior';
    expect(text.split(','), equals(['Rodrigo', 'Felipe', 'Junior']));
  });

  //NOTE - testes em funções
  test('calculate', () {
    expect(calculate(), 42);
  });

  group('test Error - ', () {
    test('Verificar maioridade - throws', () {
      expect(() => maioridade(-1), throwsException);
    });

    test('Verificar maioridade - throws', () {
      expect(() => maioridade(-1), throwsA(isA<Exception>()));
    });
  });

  group('Manipulação de strings -', () {
    test('converter em lista', () {
      expect(converterEmLista('Rodrigo Felipe'), equals(['Rodrigo', 'Felipe']));
      expect(converterEmLista('R F'), equals(['R', 'F']));
    });
    test('Recuperar nome', () {
      expect(
          recuperarNome(['Felipe', 'Rodrigo']),
          allOf(
            contains('lipe'),
            isNot(startsWith('Rod')),
            isNot(endsWith('go')),
          ));
    });
  });

  group('Manipulação de ints -', () {
    test('Resto da divisão', () {
      expect(restoDivisao(12, 3), equals(0));
    });

    test('Verificar maioridade', () {
      expect(maioridade(18), 'Adulto');
      expect(maioridade(17), 'Adolescente');
      expect(maioridade(13), 'Criança');
    });
  });
}
