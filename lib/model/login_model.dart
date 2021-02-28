// step:3
class LoginResponseModel {
  // taking parameters
  final String token;
  final String error;

  // step:4
  LoginResponseModel({this.token, this.error});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }

  // linking from the shared_services.dart for storing purposes
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'token': token.trim(),
      'error': error.trim(),
    };
    return map;
  }

}
// step:1
class LoginRequestModel {
  // taking two parameters
  String email;
  String password;

  // constructor
  LoginRequestModel({
    this.email,
    this.password,
  });

  // step:2
  // create a method of to jason using map
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };
    return map;
  }
}
