// ignore: file_names
import 'dart:io';

void main(List<String> args) {
  stdout.write('Digite o valor de N: ');
  int n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    if (n % 2 == 0) {
      print("Numero Par e Positivo: $n");
    } else {
      print("Numero impar e Positivo: $n");
    }
  } else {
    if (n % 2 == 0) {
      print("Numero Par e Negativo: $n");
    } else {
      print("Numero impar e Negativo: $n");
    }
  }
}
