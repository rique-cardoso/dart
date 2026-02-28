import 'package:aula01/aula01.dart' as aula01;

void main(List<String> arguments) {
  // O tipo String é inserido automaticamente
  var nome = 'Dart';

  // O tipo int é inserido automaticamente
  var idade = 10;

  // O tipo double é inserido automaticamente
  var altura = 1.75;

  // o tipo bool é inserido automaticamente
  var isProgramador = true;

  // o tipo List<String> é inserido automaticamente
  var frutas = ['Maçã', 'Banana', 'Laranja'];

  // o tipo Map<String, int> é inserido automaticamente
  var estoque = {
    'Maçã': 10,
    'Banana': 20,
    'Laranja': 15
    };

  // interpolação de string (usando $) para imprimir as variáveis
  print('Nome: $nome');
  print('Idade: $idade');
  print('Altura: $altura');
  print('É programador? $isProgramador');
  print('Frutas: $frutas');
  print('Estoque: $estoque');

}
