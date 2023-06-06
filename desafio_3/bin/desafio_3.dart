// Uma das coisas mais úteis que aprendemos no ensino médio é a "Regra de 3".
// Consiste quando temos 3 valores e precisamos saber o quarto.
// Geralmente temos dois grupos, e o calculo é feito multiplicando paralelamente os valores entre os dois grupos. Ex:
// --
// Grupo1.1             Grupo1.2
//                    X
// Grupo2.1            Grupo2.2
// --
// Grupo1.1 x Grupo2.2 = Grupo2.1 x Grupo1.2

// Sabendo disso, crie uma função que receba 4 argumentos opcionais e que retorne a resolução da regra de 3,
// levando em consideração que será considerado o argumento vário como valor a ser encontrado, logo, poderá ter apenas um valor necessáriamente "vazio".

//20  =>  x
//100 => 200
//resultado deve ser 40

import 'dart:io';

void main() {
  num? grupo1_1;
  num? grupo1_2;
  num? grupo2_1;
  num? grupo2_2;

  print('Informe primeiro valor: ');
  grupo1_1 = stdin.readLineSync() == null
      ? null
      : num.parse(
          stdin.readLineSync()!,
        );
  print('Informe segundo valor: ');
  grupo1_2 = stdin.readLineSync() == null
      ? null
      : num.parse(
          stdin.readLineSync()!,
        );
  print('Informe terceiro valor: ');
  grupo2_1 = stdin.readLineSync() == null
      ? null
      : num.parse(
          stdin.readLineSync()!,
        );
  print('Informe quarto valor: ');
  grupo2_2 = stdin.readLineSync() == null
      ? null
      : num.parse(
          stdin.readLineSync()!,
        );

  var resultRegraDeTres = regraDeTres(
    grupo1_1,
    grupo1_2,
    grupo2_1,
    grupo2_2,
  );

  print(
    resultRegraDeTres == 0
        ? 'Não é possível calcular a regra de três, necessário um valor vazio.'
        : 'O valor encontrado é: $resultRegraDeTres',
  );
}

num regraDeTres(num? grupo1_1, num? grupo1_2, num? grupo2_1, num? grupo2_2) {
  if (grupo1_1 == 0 && grupo1_1 == null) {
    return grupo2_1! * grupo1_2! / grupo2_2!;
  } else if (grupo1_2 == 0 && grupo1_1 == null) {
    return grupo2_2! * grupo1_1! / grupo2_1!;
  } else if (grupo2_1 == 0 && grupo1_1 == null) {
    return grupo1_1! * grupo2_2! / grupo1_2!;
  } else if (grupo2_2 == 0 && grupo1_1 == null) {
    return grupo1_2! * grupo2_1! / grupo1_1!;
  } else {
    return 0;
  }
}
