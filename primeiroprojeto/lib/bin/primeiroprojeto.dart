import 'package:primeiroprojeto/primeiroprojeto.dart' as primeiroprojeto;
import 'dart:io';

int calcularFatorial(int numero) {
  if (numero == 0 || numero == 1) {
    return 1;
  } else {
    return numero * calcularFatorial(numero - 1);
  }
}

bool ehPrimo(int numero) {
  if (numero <= 1) {
    return false;
  }

  for (int i = 2; i <= (numero / 2); i++) {
    if (numero % i == 0) {
      return false;
    }
  }

  return true;
}

double converterCelsiusParaFahrenheit(double temperaturaCelsius) {
  return (temperaturaCelsius * 9 / 5) + 32;
}

bool ehPalindromo(String palavra) {
  String palavraInvertida = palavra.split('').reversed.join('');
  return palavra.toLowerCase() == palavraInvertida.toLowerCase();
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

void exibirTabuada(int numero) {
  print('Tabuada de multiplicação para o número $numero:');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}

void main(List<String> arguments) {
  // print('Hello world: ${primeiroprojeto.calculate()}!');

//Exercicio1
  stdout.write('Digite o valor de N: ');
  int n = int.parse(stdin.readLineSync()!);

  int soma = 0;
  for (int i = 2; i <= n; i += 2) {
    soma += i;
  }

  print('A soma dos de 1 a $n é: $soma');
//
//Exercicio2
  stdout.write('Digite um número para calcular o fatorial: ');
  int numero = int.parse(stdin.readLineSync()!);

  int resultado = calcularFatorial(numero);

  print('O fatorial de $numero é: $resultado');
//
//Exercicio3
  // Solicitar um número ao usuário
  stdout.write('Digite um número para verificar se é primo: ');
  int num = int.parse(stdin.readLineSync()!);

  if (ehPrimo(numero)) {
    print('$numero é um número primo.');
  } else {
    print('$numero não é um número primo.');
  }
//
//Exercicio4

  stdout.write('Digite uma palavra para verificar se é um palíndromo: ');
  String palavra = stdin.readLineSync()!;

  if (ehPalindromo(palavra)) {
    print('$palavra é um palíndromo.');
  } else {
    print('$palavra não é um palíndromo.');
  }
//
//Exercicio5
  stdout.write('Digite a temperatura em Celsius: ');
  double temperaturaCelsius = double.parse(stdin.readLineSync()!);

  double temperaturaFahrenheit =
      converterCelsiusParaFahrenheit(temperaturaCelsius);

  print(
      '$temperaturaCelsius graus Celsius é equivalente a $temperaturaFahrenheit graus Fahrenheit.');
//
//Exercicio6
  stdout.write('Digite o peso em quilogramas: ');
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a altura em metros: ');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = calcularIMC(peso, altura);

  print('O Índice de Massa Corporal (IMC) é: $imc');
  if (imc < 18.5) {
    print('Você está abaixo do peso.');
  } else if (imc >= 18.5 && imc < 25) {
    print('Seu peso está normal.');
  } else if (imc >= 25 && imc < 30) {
    print('Você está com sobrepeso.');
  } else {
    print('Você está obeso.');
  }
//
//Exercicio7
  stdout.write('Digite um número para exibir a tabuada: ');
  int numeroEscolhido = int.parse(stdin.readLineSync()!);

  exibirTabuada(numeroEscolhido);
//
}
