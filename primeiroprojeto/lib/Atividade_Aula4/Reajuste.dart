import 'dart:io';

void main(List<String> args) {
  stdout.write('Digite o valor de N: ');
  int n = int.parse(stdin.readLineSync()!);

  double reajuste = n * 1.05;

  print("O valor do reajuste é: $reajuste");
}
