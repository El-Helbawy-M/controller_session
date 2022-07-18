class Validator {
  List<String> emailSympol = [".", "@", "gmail"];

  bool validateEmail(String email) {
    for (int x = 0; x < emailSympol.length; x++) {
      if (!email.contains(emailSympol[x])) return false;
    }
    return true;
  }

  bool validatePassword(String password) => password.length>=6;
}
