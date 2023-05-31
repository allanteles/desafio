// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:desafio/src/service/verify_password_service.dart';

class HomeController {
  final VerifyPasswordService service;

  HomeController({
    required this.service,
  });

  bool isStrongPassword(String password) {
    if (service.haveOverSevenCharacter(password) &&
        service.haveUpperCase(password) &&
        service.haveLowerCase(password) &&
        service.haveNumber(password) &&
        service.haveSpecialsCharacter(password)) {
      return true;
    } else {
      return false;
    }
  }
}
