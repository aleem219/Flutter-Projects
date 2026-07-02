import 'package:flutter/material.dart';
import 'package:testlogin/components/resuble_button.dart';
import 'package:testlogin/components/rounded_input_field.dart';
import 'package:testlogin/service/auth_service.dart';
import 'package:testlogin/models/user_model.dart';
import 'package:testlogin/screeens/user_screen.dart';
import 'package:testlogin/components/app_dialog.dart';
// import 'package:network_checker/network_checker.dart';
import 'package:testlogin/service/session_service.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ValueNotifier<bool> _isLoading = ValueNotifier(false);


  Future<UserModel?> loginUser(BuildContext context) async {
    try {
      final user = await AuthService.login(
        _usernameController.text,
        _passwordController.text,
      );
      return user;
    } catch (e) {
      AppDialog.show(
        context: context,
        title: 'Alert',
        message: e.toString().replaceAll('Exception: ', ''),
      );
      return null;
    }
  }


  Future<void> _handleLogin() async {
    _isLoading.value = true;


    if (_usernameController.text.trim().isEmpty) {
      await AppDialog.show(
        context: context,
        title: 'Alert',
        message: 'Please enter your username.',
        buttonText: 'Dismiss',
      );
      _isLoading.value = false;
      return;
    }

    if (_passwordController.text.trim().isEmpty) {
      await AppDialog.show(
        context: context,
        title: 'Alert',
        message: 'Please enter your password.',
        buttonText: 'Dismiss',
      );
      _isLoading.value = false;
      return;
    }

    final user = await loginUser(context);
    _isLoading.value = false;
    if (!mounted) return;

    if (user != null) {
      await SessionService.saveSession(user);
      Navigator.pushReplacementNamed(context, '/user');
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final logoSize = screenWidth * 0.9;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            width: logoSize,
            fit: BoxFit.contain,
          ),
          RoundedInputField(
            labelText: 'Please enter your username',
            controller: _usernameController,
          ),
          RoundedInputField(
            labelText: 'Please enter your password',
            obscureText: true,
            controller: _passwordController,
          ),
          const SizedBox(height: 15.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Abdul Aleem Usmani',
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              Expanded(
                child: Text(
                  'Abdul Aleem Usmani',
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ValueListenableBuilder(
              valueListenable: _isLoading,
              builder: (context, loading, child) {
                return ResuableRoundButton(
                  onPressed: loading ? () { } : _handleLogin,
                  bottomTitle: loading ? 'Loading...' : 'Login',
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}