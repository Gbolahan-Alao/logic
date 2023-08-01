import 'package:flutter/material.dart';
import 'package:logic/search_job_screen.dart';
import 'package:logic/search_salary_screen.dart';

class SearchOptionPage extends StatefulWidget {
  const SearchOptionPage({super.key});
  @override
  State<SearchOptionPage> createState() {
    return _SearchOptionPageState();
  }
}

class _SearchOptionPageState extends State<SearchOptionPage> {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(239, 126, 54, 207),
          Color.fromARGB(239, 87, 7, 131)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextButton(
          style: TextButton.styleFrom(
              minimumSize: const Size(200, 70),
              backgroundColor: Color.fromARGB(190, 0, 0, 0),
              textStyle: const TextStyle(fontSize: 25)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchJobScreen()),
            );
          },
          child: const Text(
            'Search Job',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
          style: TextButton.styleFrom(
              minimumSize: const Size(200, 70),
              backgroundColor: Color.fromARGB(190, 0, 0, 0),
              textStyle: const TextStyle(fontSize: 25)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SearchSalaryScreen()),
            );
          },
          child: const Text(
            'Search Salary',
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}


// SizedBox(
//           width: 200,
//           height: 200,
//           child: Text(
//             'Hello, world!',
//             style: TextStyle(fontSize: 10, color: Colors.white),
//           ),
//         ),
//         SizedBox(
//           width: 200,
//           height: 200,
//           child: Text(
//             'Hello, world!',
//             style: TextStyle(fontSize: 10, color: Colors.white),
//           ),
//         )