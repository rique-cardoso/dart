import 'dart:io';

void main() {
  stdout.write('Nota 1: ');
  double nota1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  stdout.write('Nota 2: ');
  double nota2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  stdout.write('Nota 3: ');
  double nota3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  double media = (nota1 + nota2 + nota3) / 3;
  print('Média: $media');
}
