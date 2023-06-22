import 'cpf.dart';

void main(List<String> arguments) {
  Cpf cpf = Cpf('07898900545');

  if (cpf.validateCpf(cpf.cpf)) {
    print('CPF Válido');
  } else {
    print('CPF Inválido');
  }
}
