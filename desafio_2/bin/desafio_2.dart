// Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), é uma sequência de números inteiros,
// começando normalmente por 0 e 1, na qual cada termo subsequente corresponde à soma dos dois anteriores.
// A sequência recebeu o nome do matemático italiano Leonardo de Pisa, mais conhecido por Fibonacci, que descreveu,
// no ano de 1202, o crescimento de uma população de coelhos, a partir desta. Esta sequência já era, no entanto, conhecida na antiguidade.

// Implemente a sequencia fibonacci com funcões recursivamente usando o Dart.
// Boa sorte!
// Ah, não custa dizer: NÃO PESQUISE NA INTERNET SE NAO DESEJA MINAR SEU CONHECIMENTO E DÊ APENAS DICAS AOS SEUS PARES, E NÃO A REPOSTA CORRETA DE CARA.
//LEMBRE-SE QUE INFORMAÇÃO < CONHECIMENTO.
// E estamos aqui pra conseguir conhecimento, informação tem muito na internet.

import 'dart:io';

void main(List<String> arguments) {
  print('Informe o tamanho da função: ');
  var valor = int.parse(stdin.readLineSync()!);

  for (int c = 0; c <= valor; c++) {
    print(fibonacci(c + 1));
  }
}

int fibonacci(int i) {
  if (i == 0) {
    return 0;
  } else if (i == 1) {
    return 1;
  } else {
    return fibonacci(i - 1) + fibonacci(i - 2);
  }
}
