class Validator {
  
  List<String> emailSympol = [".", "@", "gmail"];

  // for validating the email
  bool validateEmail(String email) {
    for (int x = 0; x < emailSympol.length; x++) {
      if (!email.contains(emailSympol[x])) return false;
    }
    return true;
  }
  // for validating the password
  bool validatePassword(String password) => password.length>=6;
}
