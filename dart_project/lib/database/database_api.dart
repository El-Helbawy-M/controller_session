class DatabaseApi {
  List<String> emails = ["mohamed.elhelbawy.ac@gmail.com"];
  List<String> passwords = ["lklklk"];
  Future<bool> signIn(String email, String password) async => await emails.contains(email) && passwords.contains(password);
}
