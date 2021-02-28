import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'model/login_model.dart';

// for login and logout
class SharedService {
  // step:1 method
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("login_details") != null ? true : false;
  }

  // step:2 method
  static Future<void> setLoginDetails(LoginResponseModel loginResponse) async {
    final prefs = await SharedPreferences.getInstance();

    // define the toJson method within LoginResponseModel within login_model.dart
    return prefs.setString("login_details",
        loginResponse != null ? jsonEncode(loginResponse.toJson()) : null);
  }

  // step:3 method
  static Future<void> logout() async {
    await setLoginDetails(null);
  }

  // static Future<Login> loginDetails() async {
  //   final prefs = await SharedPreferences.getInstance();

  //   return prefs.getString("login_details") != null
  //       ? Login.fromJson(jsonDecode(prefs.getString("login_details")))
  //       : null;
  // }



}
