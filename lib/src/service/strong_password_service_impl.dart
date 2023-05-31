import 'package:desafio/src/service/verify_password_service.dart';

class StrongPasswordServiceImpl implements VerifyPasswordService {
  @override
  bool haveOverSevenCharacter(String passord) {
    return passord.trim().length >= 7 ? true : false;
  }

  @override
  bool haveUpperCase(String password) {
    RegExp regex = RegExp(r'[A-Z]');

    return regex.hasMatch(password);
  }

  @override
  bool haveLowerCase(String password) {
    RegExp regex = RegExp(r'[a-z]');
    return regex.hasMatch(password);
  }

  @override
  bool haveNumber(String password) {
    RegExp regex = RegExp(r'\d');
    return regex.hasMatch(password);
  }

  @override
  bool haveSpecialsCharacter(String password) {
    RegExp regex = RegExp(r'[^a-zA-Z0-9\s]');
    return regex.hasMatch(password);
  }
}
