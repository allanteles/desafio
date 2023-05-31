import 'package:desafio/src/service/verify_password_service.dart';

class HomeController {
  bool isStrongPassword(String password) {
    if (VerifyPasswordService.haveOverSevenCharacter(password) &&
        VerifyPasswordService.haveLetterUpperCase(password) &&
        VerifyPasswordService.haveLowerCase(password) &&
        VerifyPasswordService.haveNumber(password) &&
        VerifyPasswordService.haveSpecialsCharacter(password)) {
      return true;
    } else {
      return false;
    }
  }
}
