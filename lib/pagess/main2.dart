import 'package:flutter/material.dart';
import 'package:flutter_app/pagess/home_page.dart';
import 'package:flutter_app/pagess/intro_pages.dart';

void main() {
  runApp(const MyAppo());
}

class MyAppo extends StatelessWidget {
  const MyAppo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroPage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/intropage': (context) => const IntroPage(),
      },
    );
  }
}
