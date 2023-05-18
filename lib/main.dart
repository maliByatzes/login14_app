import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // logo
              Container(
                color: Colors.orange,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                      width: double.infinity,
                    ),
                    Image.asset(
                      'lib/images/logo.png',
                      height: 120,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text('Login'),
                  ],
                ),
              ),
              // login text

              // email textfield

              // passwaord textfield

              // forgot password

              // don't have an account? Signup
            ],
          ),
        ),
      ),
    );
  }
}
