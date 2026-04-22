import 'package:aula05/aula05.dart' as aula05;
import 'dart:io';

/*
  Seu nome
  Sua idade
  Sua altura
  Se você é estudante
 */

void main(List<String> arguments) {
  print('-----CADASTRO-----');
  stdout.write(
    'Digite seu nome: ',
  ); // usamos stdout.write ao invés de print, pois o print pula uma linha no terminal e o stdout.wirte não.
  String? nome = stdin.readLineSync();
  stdout.write('Digite sua idade: ');
  int idade = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  stdout.write('Digite sua altura: ');
  double altura = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  stdout.write('Você é estudante? ');
  bool estudante = (stdin.readLineSync() ?? '').toLowerCase().startsWith('s');
  /* 
    implementar quando for adicionar estruturas de controle
    stdout.write('Deseja ver os dados?');
    bool verDados = (stdin.readLineSync() ?? '').toLowerCase().startsWith('s');
  */
  print('-----CADASTRO CONCLUÍDO-----');
  print("Nome: $nome\nIdade: $idade\nAltura: $altura\nEstudante: $estudante");

  /*
    Implementar estruturas de controle posteriormente
    if(verDados){
      for(){
        apresentar resultados
      }
    }
  */
}
