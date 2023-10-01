import 'dart:convert';
import 'dart:io';

double readConsoleWithTextAndReturnDouble(String text, String textExitApp) {
  bool getCorrectValue = false;
  double convertTextConsole = 0.0;

  do {
    print(text);

    var getTextConsole = stdin.readLineSync(encoding: utf8);

    if (getTextConsole == textExitApp) {
      print('[X] Saindo da aplicação, até logo!');
      exit(0);
    }

    try {
      convertTextConsole = double.parse(getTextConsole ?? '');

      getCorrectValue = true;
    } catch (e) {
      print('---------------------------------------------------------');
      print("Número informado não permitido, digite um número válido!");
      print('---------------------------------------------------------');
      print('\n');
    }

  } while(!getCorrectValue);

  return convertTextConsole;
}

double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);

  return bmi;
}

String returnTextCorresponding(double bmi) {
  if (bmi < 16) {
    return '-> Magreza grave';
  } else if (bmi >= 16 && bmi < 17) {
    return '-> Magreza moderada';
  } else if (bmi >= 17 && bmi < 18.5) {
    return '-> Magreza leve';
  } else if (bmi >= 18.5 && bmi < 25) {
    return '-> Saudável';
  } else if (bmi >= 25 && bmi < 30) {
    return '-> Sobrepeso';
  } else if (bmi >= 30 && bmi < 35) {
    return '-> Obesidade Grau I';
  } else if (bmi >= 35 && bmi < 40) {
    return '-> Obesidade Grau II (severa)';
  } else {
    return '-> Obesidade Grau III (mórbida)';
  }
}