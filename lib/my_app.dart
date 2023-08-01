import 'package:flutter/material.dart';
import 'package:logic/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 47, 3, 71)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const SplashScreen(),
        ),
      ),
    );
  }
}
