import 'dart:io';

void main() {
  print("-------------------------------");
  print("          CALCULADORA          ");
  print("-------------------------------");
  stdout.write('Insira um número: ');
  double numberA = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  stdout.write('Insira outro número: ');
  double numberB = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  double soma = numberA + numberB;
  double subtracao = numberA - numberB;
  double multiplicacao = numberA * numberB;
  double divisao = numberA / numberB;
  print("-------------------------------");
  print("           RESULTADOS          ");
  print("-------------------------------");
  print(
    'Soma: $soma\nSubtração: $subtracao\nMultiplicação: $multiplicacao\nDivisão: $divisao',
  );
}
