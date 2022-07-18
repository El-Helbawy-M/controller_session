import 'package:controller_session/database/database_api.dart';

class Auther {
  DatabaseApi api = DatabaseApi();
  Future<bool> signIn(String email, String password) async => api.signIn(email, password);
}
