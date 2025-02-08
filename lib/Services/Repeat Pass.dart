import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:garden_lovers_mobile_app/Models/UserLoginModel.dart';

class Repeat_Service {
  static const String apiUrl = 'http://garenloverss.runasp.net/api/user/repeat_pass';
  Dio _dio = Dio();
  Future<bool> repeatPassword(LoginRequestModel model) async {
    final response = await _dio.post(
      apiUrl,
      options: Options(headers: {"Content-Type": "application/json"}),
      data: jsonEncode(model.toJson()),
    );

    if (response.statusCode == 200) {
      print(response.data);
      return true;
    } else {
      return false;
    }
  }
}
