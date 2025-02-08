import 'dart:convert';
import 'package:dio/dio.dart';
import '../Models/ResponceModel.dart';
import '../Models/UserLoginModel.dart';

class AuthService {
  final Dio _dio = Dio();
  final String baseUrl = "http://garenloverss.runasp.net/api/user/login";

  Future<ResponceModel> login(LoginRequestModel user) async {
    try {
      Response response = await _dio.post(
        baseUrl,
        data: jsonEncode(user.toJson()),
        options: Options(headers: {"Content-Type": "application/json"}),
      );

      print("Response Status Code: ${response.statusCode}");
      print("Response Data: ${response.data}");

      if (response.statusCode == 200) {
        var data = response.data;
        if (data['status'] == 'success') {
          return ResponceModel.fromJson(data['user']);
        } else {
          throw Exception("Login failed! Server Response: ${data['status']}");
        }
      } else {
        throw Exception("Login failed! Status Code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error during login: $e");
      throw Exception("Login request failed!");
    }
  }
}
