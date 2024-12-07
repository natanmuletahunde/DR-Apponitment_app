import 'dart:convert';

import 'package:dio/dio.dart';

class DioProvider {
  Future<dynamic> getToken(String email, String password) async {
    try {
      var response = await Dio().post(
        'http://127.0.0.1:8000/api/login', // Update with your IP
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200 && response.data != null) {
        return response.data; // Returning the token response data
      }
    } catch (error) {
      print('Error: $error'); // Print error to debug
      return error;
    }
  }
  Future<dynamic> getUser(String token) async {
    try {
      var user = await Dio().get(
        'http://127.0.0.1:8000/api/user',
        options: Options(headers: {'Authorization':'Bearer $token'}) // Update with your IP
      );
      if (user.statusCode == 200 && user.data != null) {
        return json.encode(user.data);
      }
    } catch (error) {
      print('Error: $error'); // Print error to debug
      return error;
    }
  }
}
