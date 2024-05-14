import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("H O M E P A G E"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to intropage"),
          onPressed: () {
            Navigator.pushNamed(context, '/intropage');
          },
        ),
      ),
    );
  }
}
