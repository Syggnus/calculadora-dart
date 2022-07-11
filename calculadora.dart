import 'dart:io';

void main() {
  print("Bem vindo a CalcDart 1.0");
  calculadora();
}

calculadora() {
  print(
      "Escolha abaixo a operação que deseja: \n1 - Adição\n2 - Subtração\n3 - Multiplicação\n4 - Divisão");
  String? escolha = stdin.readLineSync();

  switch (escolha) {
    case "1":
      print("Escolha os números para realizar a Adição");
      String? num_add1 = stdin.readLineSync();
      print(num_add1);
      String? num_add2 = stdin.readLineSync();

      if (num_add1 != null && num_add2 != null) {
        double resultado_add = double.parse(num_add1) + double.parse(num_add2);
        print("O resultado é: $resultado_add");
      }
      break;
    case "2":
      print("Escolha os números para realizar a Subtração");
      String? num_sub1 = stdin.readLineSync();
      String? num_sub2 = stdin.readLineSync();

      if (num_sub1 != null && num_sub2 != null) {
        double resultado_sub = double.parse(num_sub1) - double.parse(num_sub2);
        print("O resultado é: $resultado_sub");
        break;
      }
      break;

    case "3":
      print("Escolha os números para realizar a Multiplicação");
      String? num_mut1 = stdin.readLineSync();
      String? num_mut2 = stdin.readLineSync();

      if (num_mut1 != null && num_mut2 != null) {
        double resultado_mut = double.parse(num_mut1) * double.parse(num_mut2);
        print("O resultado é: $resultado_mut");
        break;
      }
      break;

    case "4":
      print("Escolha os números para realizar a Divisão");
      String? num_div1 = stdin.readLineSync();
      String? num_div2 = stdin.readLineSync();

      if (num_div1 != null && num_div2 != null) {
        double resultado_div = double.parse(num_div1) / double.parse(num_div2);
        print("O resultado é: $resultado_div");
        break;
      }
      break;
  }
  print("Fim da Operação\nDeseja realizar outra operação ?\n1 - Sim\n2 - Não");
  String? escolha2 = stdin.readLineSync();
  switch (escolha2) {
    case "1":
      calculadora();
      break;
    case "2":
      print("Byee!");
      return;
  }
}
