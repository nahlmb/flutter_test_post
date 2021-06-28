import 'package:shared_preferences/shared_preferences.dart';

class LoginProviderLocal {
  saveUserToken(String token) async {
    var sharepref = await SharedPreferences.getInstance();
    sharepref.setString("baererToken", token);
  }

  Future<String> getUserToken() async {
    var sharepref = await SharedPreferences.getInstance();
    var token = sharepref.getString("baererToken");
    return token!;
  }

  Future<bool> checkIsTokenExist() async {
    var sharepref = await SharedPreferences.getInstance();
    return sharepref.containsKey("baererToken");
  }
}
