import 'dart:io';

void main(List<String> args) {
  stdout.write('Digite o valor de N: ');
  int n = int.parse(stdin.readLineSync()!);
  int x = n + 1;
  int y = n - 1;

  print("O Antecessor do $n e: $x");
  print("O Sucessor de $n é: $y");
}
