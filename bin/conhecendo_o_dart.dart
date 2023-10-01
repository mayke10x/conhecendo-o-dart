import 'package:conhecendo_o_dart/utils.dart';

void main(List<String> arguments) {
  print('----- Calculando o IMC -----');

  double weightInKg = readConsoleWithTextAndReturnDouble('* Digite o seu peso em Kg (ou digite "s" para sair):', 's');
  double heightInMeters = readConsoleWithTextAndReturnDouble('* Digite sua altura em metros (ou digite "s" para sair):', 's');
  
  double resultCalc = calculateBMI(weightInKg, heightInMeters);

  print(returnTextCorresponding(resultCalc));
}