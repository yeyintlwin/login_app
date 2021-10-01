import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:login_app/model/login_model.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "https://reqres.in/api/login";

    final response = await http.post(
      Uri.parse(url),
      body: requestModel.toJson(),
    );

    log("status code: ${response.statusCode}");

    log('header: ${response.headers}');

    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw Exception("Error: ${response.statusCode}, Faild to load data!");
    }
  }
}
