import 'package:desafio/src/service/strong_password_service_impl.dart';
import 'package:desafio/src/service/verify_password_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var passwords = ['#forTe1', 'senhafraca', 'Qu@s1', 'Voce@Consegue!2023'];
  VerifyPasswordService service = StrongPasswordServiceImpl();

  test('deve ser maior ou igual a 7 caracateres', () {
    expect(service.haveOverSevenCharacter(passwords[0]), true);
    expect(service.haveOverSevenCharacter(passwords[1]), true);
    expect(service.haveOverSevenCharacter(passwords[2]), false);
    expect(service.haveOverSevenCharacter(passwords[3]), true);
  });

  test('Tem letra maiúscula', () {
    expect(service.haveUpperCase(passwords[0]), true);
    expect(service.haveUpperCase(passwords[1]), false);
    expect(service.haveUpperCase(passwords[2]), true);
    expect(service.haveUpperCase(passwords[3]), true);
  });

  test('Tem letra minúscula', () {
    expect(service.haveLowerCase(passwords[0]), true);
    expect(service.haveLowerCase(passwords[1]), true);
    expect(service.haveLowerCase(passwords[2]), true);
    expect(service.haveLowerCase(passwords[3]), true);
  });

  test('Tem número', () {
    expect(service.haveNumber(passwords[0]), true);
    expect(service.haveNumber(passwords[1]), false);
    expect(service.haveNumber(passwords[2]), true);
    expect(service.haveNumber(passwords[3]), true);
  });

  test('Tem caracter especial', () {
    expect(service.haveSpecialsCharacter(passwords[0]), true);
    expect(service.haveSpecialsCharacter(passwords[1]), false);
    expect(service.haveSpecialsCharacter(passwords[2]), true);
    expect(service.haveSpecialsCharacter(passwords[3]), true);
  });
}
