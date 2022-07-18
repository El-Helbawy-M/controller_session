import 'package:controller_session/core/auther.dart';
import 'package:controller_session/core/confermer.dart';
import 'package:controller_session/core/validator.dart';

class AuthController {
  Auther auther = Auther();
  Validator validator = Validator();

  Future<bool> signIn(String email, String password) async {
    //validation level
    if (validator.validateEmail(email) && validator.validatePassword(password)) {

      //Authentication level
      if (await auther.signIn(email, password)) {

        //Confirmation leve
        Confirm.sendConfirm(email);
        return true;
        //================================

      }
      //================================


      //Authentication failed
      print("F2");
      return false;
      //================================
      
    }
    //================================
    
    
    //validation failed
    print("F1");
    return false;
    //================================
  }
}
