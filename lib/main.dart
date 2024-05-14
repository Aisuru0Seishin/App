import 'package:flutter/material.dart';
import 'package:flutter_app/every_widgets/animated_modal_barrier.dart';

const Color darkBlue = Color(0xFF12202F);

void main1() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      title: 'Every Flutter Widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Mapp'),
        ),
        //! Just change the Widget001 for the Widget you want.
        body: const Widget013(),
      ),
    );
  }
}
