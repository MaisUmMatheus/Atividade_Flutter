import 'dart:io';

void main(List<String> args) {
  print("Digite o primeiro valor booleano (true/false): ");
  bool n = bool.parse(stdin.readLineSync()!);

  print("Digite o segundo valor booleano (true/false): ");
  bool x = bool.parse(stdin.readLineSync()!);

  if (n && x) {
    print("VERDADEIROS.");
  } else if (!n && !x) {
    print("FALSOS.");
  } else {
    print("Diferentes.");
  }
}
