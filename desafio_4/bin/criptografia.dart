// Crie uma classe que execute 3 regras de negócio relacionado a criptografia:
// A - Gerador de Key randômica.
// B - Encode (Retorne o texto criptografado)
// C - Decode (Retorne o texto descriptografado).

import 'dart:math';

class Criptografia {
  String? key;

  Criptografia();

  String gerarKey(int length) {
    final random = Random();
    const availableChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final key = List.generate(
      length,
      (index) => availableChars[random.nextInt(availableChars.length)],
    ).join();

    return key.toUpperCase();
  }

  // B. Encode:
  // Passo 1: Receba o texto a ser criptografado e a chave em questão.
  // Passo 2: deve-se somar o charCode de cada letra do texto e da key em suas respectivas posições e dividir por 26.
  //O RESTO dessa divisão deve ser somado com o CharCode da letra A.
  // Passo 3: O resultado da soma anterior é o novo char.
  // Lembre-se: Valores não alfabetos não devem ser transformados.
  //TODO: VER ISSO AQUI

  String encode(String text, String key) {
    String textEncoded = '';

    return textEncoded;
  }

  // C. Decode:
  // Passo 1: Receba a o texto criptografado e a chave.
  // Passo 2: deve-se subtrair o charCode de cada letra do texto e da key em suas respectivas posições somando o resultado com 26.
  // O resultado deve ser dividido por 26. O RESTO dessa divisão deve ser somado com o CharCode da letra A.
  // Passo 3: O resultado da soma anterior é o  char descriptografado.
  //TODO: VER ISSO AQUI
  String decode(String text, String key) {
    String textDecoded = '';

    return textDecoded;
  }
}
