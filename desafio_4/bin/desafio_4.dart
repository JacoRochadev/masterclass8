// DESAFIO MASTERCLASS

// Cifra de Vigenère é uma criptografia simples usada para embaralhar textos. Valores que não seja letras NÃO SÃO TRANSFORMADOS.

// Obs: Use apenas valores maiúsculos. Certifique-se disso!

// `
// A. Algorítimo para Key:
// Para executar o encode e decode é necessário ter uma chave que tenha valores randômicos mas que tenha a mesma quantidade de caracteres
//do texto a ser criptografado.

import 'criptografia.dart';

void main(List<String> arguments) {
  Criptografia criptografia = Criptografia();
  var keyGerada = criptografia.gerarKey(10);
  print('GERADA KEY RANDOMICA: $keyGerada');

  // var keyEncode = criptografia.encode('key para encode', keyGerada);
  // print('TEXTO CRIPTOGRAFADO: $keyEncode');

  // var keyDecode = criptografia.decode(keyEncode, keyGerada);
  // print('TEXTO DESCRIPTOGRAFADO: $keyDecode');
}
