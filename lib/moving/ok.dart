import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text("Hello World"),
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(150)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                child: const Icon(
                  Icons.air,
                  color: Colors.blueAccent,
                  size: 50,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pague1()),
                  );
                },
                child: const Text('Go to Pague 1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pague1 extends StatelessWidget {
  const Pague1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pague 1'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la navegación para abrir Pague 2
              },
              child: const Text('Open pague 2'))),
    );
  }
}
