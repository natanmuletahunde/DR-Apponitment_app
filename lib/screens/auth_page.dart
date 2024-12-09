import 'package:flutter/material.dart';
import 'package:drappointment/components/login_form.dart';
import 'package:drappointment/utils/config.dart';
import 'package:drappointment/utils/text.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    Config.init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildHeaderText(),
                Config.spaceSmall,
                const LoginForm(),
                Config.spaceSmall,
                _buildForgotPasswordButton(),
                const Spacer(),
                _buildSocialLoginText(),
                Config.spaceSmall,
                _buildSocialButtons(),
                Config.spaceSmall,
                _buildSignUpRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppText.enText['Welcome_text']!,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          AppText.enText['SignIn_text']!,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordButton() {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Text(
          AppText.enText['forgot-password']!,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialLoginText() {
    return Center(
      child: Text(
        AppText.enText['social-login']!,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildSocialButton('Google', () {}),
        _buildSocialButton('Facebook', () {}),
      ],
    );
  }

  Widget _buildSocialButton(String title, VoidCallback onPressed) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Config.primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppText.enText['signUp_text']!,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey.shade500,
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
