import 'package:flutter/material.dart';
import 'package:drappointment/components/button.dart';
import 'package:drappointment/utils/config.dart';
import 'package:http/http.dart' as http; // Import http package
import 'dart:convert'; // For JSON encoding/decoding

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool obsecurPass = true;

  // Function to get the token from API using email and password
  Future<dynamic> getToken(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/api/login'), // Update with your IP
        headers: {'Content-Type': 'application/json'}, // Set the header to JSON
        body: jsonEncode({'email': email, 'password': password}), // Send data as JSON
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body); // Return token if login is successful
      } else {
        return null; // Return null if login fails
      }
    } catch (error) {
      print('Error: $error');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Config.primaryColor,
              decoration: const InputDecoration(
                hintText: 'Email Address',
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.email_outlined),
                prefixIconColor: Config.primaryColor,
              ),
            ),
            Config.spaceSmall,
            TextFormField(
              controller: _passController,
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Config.primaryColor,
              obscureText: obsecurPass,
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                alignLabelWithHint: true,
                prefixIcon: const Icon(Icons.lock_outline),
                prefixIconColor: Config.primaryColor,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obsecurPass = !obsecurPass;
                    });
                  },
                  icon: obsecurPass
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.black38,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          color: Config.primaryColor,
                        ),
                ),
              ),
            ),
            Config.spaceSmall,
            Button(
              title: 'Sign In',
              width: double.infinity,
              onPressed: () async {
                // Attempt to get the token using the updated getToken method
                final token = await getToken(
                  _emailController.text,
                  _passController.text,
                );

                if (token != null) {
                  print('Token: $token');
                  // Navigate to another page or handle the login success
                } else {
                  print('Login failed. Invalid credentials.');
                  // Show an error message to the user
                }
              },
              disable: false,
              buttonColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
