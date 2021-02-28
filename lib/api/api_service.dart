import '../model/user_model.dart';
import '../shared_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/login_model.dart';

// Step:1 checking login api
class APIService {
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

  // step:2 fetching the data list of the user
  Future<DataModel> getUsers() async {
    String url = "https://reqres.in/api/users?page=2";

    final response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 400) {
      return DataModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
