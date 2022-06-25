import 'package:flutter/material.dart';
import 'package:login_page/config/screen/loginscreen.dart';

void main() {
  runApp(LoginUI());
}

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Here",
      home: LoginScreen(),



    );
  }
}




