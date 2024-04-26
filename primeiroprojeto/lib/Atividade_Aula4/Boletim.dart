import 'dart:io';

void main(List<String> args) {
  double n = 0;

  for (int i = 1; i <= 4; i++) {
    print("Digite a ${i}ª nota: ");
    double nota = double.parse(stdin.readLineSync()!);
    if (nota < 10 && nota > 0) {
      n += nota;
    } else {
      print("Numero inválido");
      break;
    }
  }

  double media = n / 4;

  print("Média das notas: ${media.toStringAsFixed(2)}");

  if (media < 7) {
    print("Recuperação");
  } else {
    print("Aprovado");
  }
}
