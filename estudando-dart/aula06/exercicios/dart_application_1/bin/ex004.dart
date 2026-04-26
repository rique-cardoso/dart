import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite o Raio do círculo: ');
  double raio = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  double area = pi * pow(raio, 2);
  String areaFormatada = area.toStringAsFixed(2);
  print('Área $areaFormatada');
}
