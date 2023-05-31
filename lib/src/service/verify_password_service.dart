abstract class VerifyPasswordService {
  bool haveOverSevenCharacter(String passord);
  bool haveUpperCase(String password);
  bool haveLowerCase(String password);
  bool haveNumber(String password);
  bool haveSpecialsCharacter(String password);
}
