import 'dart:convert'; // For JSON encoding/decoding
import 'package:http/http.dart' as http; // Import http package

class HttpProvider {
  // Function to get a token by sending login credentials
  Future<dynamic> getToken(String email, String password) async {
    try {
      // Send a POST request to the login API
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/api/login'), // Update with your IP
        headers: {'Content-Type': 'application/json'}, // Optional: Specify JSON type
        body: jsonEncode({'email': email, 'password': password}), // Convert data to JSON
      );

      // Check if the response is successful (status code 200)
      if (response.statusCode == 200) {
        return jsonDecode(response.body); // Return the token response data
      } else {
        throw Exception('Failed to authenticate: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error'); // Print error to debug
      return error; // Return the error
    }
  }

  // Function to get the user data using a Bearer token
  Future<dynamic> getUser(String token) async {
    try {
      // Send a GET request to the user API
      final response = await http.get(
        Uri.parse('http://127.0.0.1:8000/api/user'), // Update with your IP
        headers: {'Authorization': 'Bearer $token'}, // Set Authorization header
      );

      // Check if the response is successful (status code 200)
      if (response.statusCode == 200) {
        return jsonDecode(response.body); // Parse and return the user data
      } else {
        throw Exception('Failed to fetch user data: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error'); // Print error to debug
      return error; // Return the error
    }
  }
}
