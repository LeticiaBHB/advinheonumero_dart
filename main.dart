import 'dart:io';
import 'dart:math';

void main() {
  print('Bem-vindo ao jogo de adivinhação!');
  print('Tente adivinhar o número entre 1 e 100.');

  final int numeroAleatorio = Random().nextInt(100) + 1;
  int tentativa;
  int numeroTentativas = 0;

  do {
    stdout.write('Insira sua tentativa: ');
    tentativa = int.parse(stdin.readLineSync()!);
    numeroTentativas++;

    if (tentativa > numeroAleatorio) {
      print('Tente um número menor.');
    } else if (tentativa < numeroAleatorio) {
      print('Tente um número maior.');
    } else {
      print('Parabéns! Você acertou o número em $numeroTentativas tentativas!');
    }
  } while (tentativa != numeroAleatorio);
}
