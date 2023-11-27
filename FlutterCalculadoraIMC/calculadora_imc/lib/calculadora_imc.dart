import 'dart:convert';
import 'dart:io';

void retornarDados() {
  print(lerDados());
}

String lerDados() {
  print("Digite seu nome:");
  String nome = stdin.readLineSync(encoding: utf8) ?? "";

  double peso = 0.0;
  try {
    print("Digite seu peso:");
    peso = double.parse(stdin.readLineSync(encoding: utf8) ?? "");
  } catch (e) {
    print("Peso inválido");
  }
  double altura = 0.0;
  try {
    print("Digite sua altura:");
    altura = double.parse(stdin.readLineSync(encoding: utf8) ?? "");
  } catch (e) {
    print("Altura Inválida");
  }

  String retorno = calcularImc(peso, altura);
  if (retorno == "Saudável") {
    return "$nome você está Saudável!";
  } else {
    return "$nome você está com $retorno!";
  }
}

String calcularImc(double peso, double altura) {
  double imc = 0.0;

  imc = peso / (altura * altura);

  if (imc < 16) {
    return "Magreza grave";
  } else if (imc >= 16 && imc < 17) {
    return "Magreza moderada";
  } else if (imc >= 17 && imc < 18.5) {
    return "Magreza leve";
  } else if (imc >= 18.5 && imc < 25) {
    return "Saudável";
  } else if (imc >= 25 && imc < 30) {
    return "Sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    return "Obesidade Grau I";
  } else if (imc >= 35 && imc < 40) {
    return "Obesidade Grau II (severa)";
  } else if (imc >= 40) {
    return "Obesidade Grau III (mórbida)";
  } else {
    return "";
  }
}
