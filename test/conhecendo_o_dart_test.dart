import 'package:conhecendo_o_dart/utils.dart' as utils;
import 'package:test/test.dart';

void main() {
  test('Calculando o IMC, passando valores corretos', () {
    expect(utils.calculateBMI(80, 2), equals(20));
  });

  test('Pegando o texto correspondente do resultado do IMC', () {
    expect(utils.returnTextCorresponding(20), equals('-> Saudável'));
  });
}
