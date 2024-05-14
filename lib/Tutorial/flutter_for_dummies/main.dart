import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPague(),
    );
  }
}

class LoginPague extends StatelessWidget {
  const LoginPague({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Avatar',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.20,
            ),
            Image.asset('images/ang1.jpg'),
          ],
        ),
      ),
    );
  }
}
