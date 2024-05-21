import 'package:flutter/material.dart';
import 'package:flutter_app/pagess/home_page.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(height: 20.20),
            Image.asset('images/ang1.jpg'),
            const SizedBox(height: 20.20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                minimumSize: const Size(300, 40),
              ),
              child: const Text('ENTRAR AL ESTADO AVATAR'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.redAccent,
                minimumSize: const Size(300, 40),
              ),
              child: const Text('ENTRAR SIN EL ESTADO AVATAR'),
            ),
          ],
        ),
      ),
    );
  }
}
