import 'package:flutter/material.dart';
import 'package:logic/search_options.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: Color.fromARGB(150, 248, 247, 247),
        ),
        const SizedBox(height: 80),
        const Text(
          'Find Your Dream Job!',
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const  SearchOptionPage()),
              );
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Find Job',
              style: TextStyle(color: Colors.white),
            ))
      ],
    ));
  }
}
