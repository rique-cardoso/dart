import 'dart:io';

void main() {
  print("-------------------------------");
  print("     CONVERSOR TEMPERATURA     ");
  print("-------------------------------");

  stdout.write("Temperatura em °C: ");
  double celcius = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  double fah = (celcius * (9 / 5)) + 32;
  print("$celcius°C em Fahrenheit é $fah");
}
