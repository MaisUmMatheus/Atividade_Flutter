import 'dart:io';

void main(List<String> args) {
  List<int> valores = [];

  for (int i = 1; i <= 3; i++) {
    print("Digite o $i numero: ");
    int n = int.parse(stdin.readLineSync()!);
    valores.add(n);
  }
  for (int i = 0; i < valores.length - 1; i++) {
    for (int j = i + 1; j < valores.length; j++) {
      if (valores[i] < valores[j]) {
        int temp = valores[i];
        valores[i] = valores[j];
        valores[j] = temp;
      }
    }
  }
  print("Valores em ordem decrescente: ${valores.join('|')}");
}
