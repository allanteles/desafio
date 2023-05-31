class VerifyPasswordService {
  static bool haveOverSevenCharacter(String passord) {
    return passord.trim().length >= 7 ? true : false;
  }

  static bool haveLetterUpperCase(String password) {
    RegExp regex = RegExp(r'[A-Z]');

    return regex.hasMatch(password);
  }

  static bool haveLowerCase(String password) {
    RegExp regex = RegExp(r'[a-z]');
    return regex.hasMatch(password);
  }

  static bool haveNumber(String password) {
    RegExp regex = RegExp(r'\d');
    return regex.hasMatch(password);
  }

  static bool haveSpecialsCharacter(String password) {
    RegExp regex = RegExp(r'[^a-zA-Z0-9\s]');
    return regex.hasMatch(password);
  }
}
