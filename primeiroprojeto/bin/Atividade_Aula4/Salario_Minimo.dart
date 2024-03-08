import 'dart:io';

void main(List<String> args) {
  var salario_minimo = 1404;

  stdout.write('Digite o seu salário: ');
  int n = int.parse(stdin.readLineSync()!);

  double salario_quantas = n / salario_minimo;

  String numeroFormatado = salario_quantas.toStringAsFixed(1);

  print("Seu salário tem $numeroFormatado salários minimos.");
}
