// O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
// O calculo é representado por Dividir o peso pela Altura ao quadradro²

// Cria uma função que realize o calculo de IMC.
// DESAFIO MASTERCLASS

import 'dart:io';

void main(List<String> arguments) {
  print('Informe seu peso: ');
  var peso = double.parse(stdin.readLineSync()!);
  print('Informe sua altura: ');
  var altura = double.parse(stdin.readLineSync()!);

  if (peso <= 0 || altura <= 0) {
    print('Informe um valor válido');
    return;
  }

  var imc = peso / (altura * altura);
  print('Seu IMC é: $imc');
}
