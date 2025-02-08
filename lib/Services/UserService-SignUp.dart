import 'package:dio/dio.dart';
import '../Models/UserModel-SignUp.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'http://garenloverss.runasp.net/api/user',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));

  Future<void> signUp(UserModel user) async {
    try {
      Response response = await _dio.post(
        '/signup',
        data: user.toJson(),
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode != 201) {
        throw Exception('Failed to sign up: ${response.statusCode}');
      }

      print('Response data: ${response.data}');
    } on DioException catch (e) {
      print('Dio Error: ${e.message}');
      if (e.response != null) {
        print('Response data: ${e.response?.data}');
        print('Response status: ${e.response?.statusCode}');
      }
      throw Exception('Failed to sign up: ${e.message}');
    } catch (e) {
      print('General Error: $e');
      throw Exception('Failed to sign up: $e');
    }
  }
}