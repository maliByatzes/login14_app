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
      backgroundColor: const Color.fromARGB(255, 206, 206, 206),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // logo
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 255, 115, 0),
                      Color.fromARGB(255, 245, 159, 0)
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(85),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                        width: double.infinity,
                      ),
                      Image.asset(
                        'lib/images/logo.png',
                        height: 100,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // email & paswd textfield
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    LoginForm(),
                  ],
                ),
              ),

              // don't have an account? Signup
              Container(
                  margin: const EdgeInsets.only(
                    top: 280.0,
                  ),
                  child: const Text('Don\'t have an account ? Signup')),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Email',
                prefixIcon: Icon(Icons.email),
                prefixIconColor: Colors.grey,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 10.0,
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.vpn_key),
                prefixIconColor: Colors.grey,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
              ),
            ),
          ),
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
