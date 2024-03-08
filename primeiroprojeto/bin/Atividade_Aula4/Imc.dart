import 'dart:io';

void main(List<String> args) {
  String resultado;
  print('Digite a sua altura: ');
  double n = double.parse(stdin.readLineSync()!);

  print('Digite o seu peso: ');
  double x = double.parse(stdin.readLineSync()!);

  double imc = x / (n * n);

  String numeroFormatado = imc.toStringAsFixed(1);

  if (imc < 18.5) {
    resultado = "Abaixo do peso";
  } else if (imc >= 18.5 && imc < 24.9) {
    resultado = "Peso ideal (parabéns!)";
  } else if (imc >= 25.0 && imc < 29.9) {
    resultado = "Levemente acima do peso";
  } else if (imc >= 30.0 && imc < 34.9) {
    resultado = "Obesidade grau I";
  } else if (imc >= 35.0 && imc < 39.9) {
    resultado = "Obesidade grau II (severa)";
  } else {
    resultado = "Obesidade grau III (mórbida)";
  }

  print("Seu IMC é $numeroFormatado e você está $resultado");
}
