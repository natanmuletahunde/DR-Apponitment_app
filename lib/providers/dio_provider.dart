import 'package:dio/dio.dart';

class DioProvider {
  final String baseUrl = 'http://10.240.211.124:8000'; // Use your local IP address here

  Future<dynamic> getToken(String email, String password) async {
    try {
      var response = await Dio().post(
        '$baseUrl/api/login',
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200 && response.data != null) {
        return response.data;
      }
    } catch (error) {
      print('Error during login request: $error');
      return error;
    }
  }

  Future<dynamic> getUser() async {
    try {
      var user = await Dio().get(
        '$baseUrl/api/user',
      );

      if (user.statusCode == 200 && user.data != null) {
        return user.data;
      }
    } catch (error) {
      print('Error during get user request: $error');
      return error;
    }
  }
}
