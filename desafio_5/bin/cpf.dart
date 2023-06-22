class Cpf {
  final String cpf;

  Cpf(this.cpf);

// 1. O primeiro passo é calcular o primeiro dígito verificador, e para isso,
//separamos os primeiros 9 dígitos do CPF (111.444.777) e multiplicamos cada um dos números, da direita para a esquerda por números
//crescentes a partir do número 2.
  bool validateCpf(String cpf) {
    var oldCpf = cpf;
    var cpfFinal;
    var verificadorCpf1 = cpf.substring(0, 9);
    var verificadorCpf2;

    if (oldCpf.length != 11) {
      return false;
    }

    verificadorCpf2 = validDigit(verificadorCpf1, 0);
    cpfFinal = validDigit(verificadorCpf2, 0);

    if (cpfFinal != oldCpf) {
      return false;
    }

    return true;
  }

  String validDigit(String cpf, int position) {
    var newCpf = 0;
    var resultSoma = 0;
    for (var i = (cpf.length - 1); i >= 0; i--) {
      newCpf = int.parse(cpf[i]) * (position + 2);
      resultSoma += newCpf;
      position++;
    }
    resultSoma = resultSoma % 11;
    if (resultSoma >= 2) {
      resultSoma = 11 - resultSoma;
    } else {
      resultSoma = 0;
    }

    return cpf + resultSoma.toString();
  }
}
