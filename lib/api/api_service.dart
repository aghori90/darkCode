import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/login_model.dart';

// purpose of creating api service class is to interact with api
// step:1
class APIService {
  // creating a method of future type and returning a request model
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "https://reqres.in/api/login";

    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
