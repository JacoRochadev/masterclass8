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

import 'dart:io';

void main(List<String> arguments) {
  print('Informe primeiro valor: ');
  var grupo1_1 = num.parse(stdin.readLineSync()!);
  print('Informe segundo valor: ');
  var grupo1_2 = num.parse(stdin.readLineSync()!);
  print('Informe terceiro valor: ');
  var grupo2_1 = num.parse(stdin.readLineSync()!);
  print('Informe quarto valor: ');
  var grupo2_2 = num.parse(stdin.readLineSync()!);

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

num regraDeTres(num grupo1_1, num grupo1_2, num grupo2_1, num grupo2_2) {
  if (grupo1_1 == 0) {
    return grupo2_1 * grupo1_2 / grupo2_2;
  } else if (grupo1_2 == 0) {
    return grupo2_2 * grupo1_1 / grupo2_1;
  } else if (grupo2_1 == 0) {
    return grupo1_1 * grupo2_2 / grupo1_2;
  } else if (grupo2_2 == 0) {
    return grupo1_2 * grupo2_1 / grupo1_1;
  } else {
    return 0;
  }
}
