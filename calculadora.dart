import 'dart:io';

void main() {
  print("Bem vindo a CalcDart 2.0");
  calculadora();
}

calculadora() {
  print(
      "Escolha abaixo a operação que deseja:\n[1] - Adição\n[2] - Subtração\n[3] - Multiplicação\n[4] - Divisão");
  print("Em seguida escolha dois números para realizar a operação");

  String? escolha = stdin.readLineSync();
  String? num1 = stdin.readLineSync();
  String? num2 = stdin.readLineSync();

  if (num1 != null && num2 != null) {
    switch (escolha) {
      case "1":
        double resultado = double.parse(num1) + double.parse(num2);
        print("O Resultado da Adição é: $resultado");
        break;
      case "2":
        double resultado = double.parse(num1) - double.parse(num2);
        print("O Resultado da Subtração é: $resultado");
        break;
      case "3":
        double resultado = double.parse(num1) * double.parse(num2);
        print("O Resultado da Multiplicação é: $resultado");
        break;
      case "4":
        double resultado = double.parse(num1) / double.parse(num2);
        print("O Resultado da Divisão é: $resultado");
        break;
      default:
        print("Escolha uma opção válida!");
        calculadora();
    }
  }
  novocalculo();
}

novocalculo() {
  print("Deseja realizar outra operação ?\n1 - Sim\n2 - Não");
  String? escolha2 = stdin.readLineSync();
  switch (escolha2) {
    case "1":
      calculadora();
      break;
    case "2":
      print("Operação Finalizada.");
      break;
    default:
      print("Opção inválida");
      novocalculo();
  }
}
