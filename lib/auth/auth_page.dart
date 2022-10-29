import 'package:flutter/material.dart';
import 'package:signin_firebase/screens/login_page.dart';
import 'package:signin_firebase/screens/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        registerPage: toggleScreens,
      );
    } else {
      return RegisterPage(
        loginPage: toggleScreens,
      );
    }
  }
}
