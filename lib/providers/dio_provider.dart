import 'package:dio/dio.dart';

class DioProvider {
  Future<dynamic> getToken(String email, String password) async {
    try {
      var response = await Dio().post(
        'http://192.168.0.103:8000/api/login', // Updated with your IPv4 address
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200 && response.data != null) {
        return response.data;
      }
    } catch (error) {
      print('Error: $error');
      return error;
    }
  }

  Future<dynamic> getUser(String token) async {
    try {
      var user = await Dio().get(
        'http://192.168.0.103:8000/api/user', // Updated with your IPv4 address
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (user.statusCode == 200 && user.data != null) {
        return user.data;
      }
    } catch (error) {
      print('Error: $error');
      return error;
    }
  }
}
