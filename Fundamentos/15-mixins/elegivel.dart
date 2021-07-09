import 'cidadao.dart';

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoContas(); //NOTE - somos obrigados a sobrescrevê-lo, por não ter escopo
}
