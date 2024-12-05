import 'dart:convert';
import 'package:dio/dio.dart';

class DioProvider {
  Future<dynamic> getToken(String email, String password) async {
    try {
      var response = await Dio().post(
        'http://10.240.136.211:8000/api/login', // Update with your IP
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

  // Get user data
  Future<dynamic> getUser() async {
    try {
      var user = await Dio().get(
        'http://10.240.136.211:8000/api/user', // Update with your IP
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
