import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:logic/search_box.dart';

class SearchJobScreen extends StatefulWidget {
  const SearchJobScreen({super.key});
  @override
  State<SearchJobScreen> createState() {
    return _SearchJobScreenState();
  }
}

class _SearchJobScreenState extends State<SearchJobScreen> {
  String searchQuery = '';
  String? selectedCategory = 'All Categories';
  String selectedLocation = 'All Locations';
  List<String> categories = [];

  // Future<void> fetchCategories() async {
  //   final response = await http.get(Uri.parse(
  //       'http://api.adzuna.com/v1/api/jobs/gb/categories?app_id=db7a7949&app_key=c3831b1104d9aca46b5ed3af522f3170&&content-type=application/json'));
  //   if (response.statusCode == 200) {
  //     final jsonData = json.decode(response.body);
  //     final categoryList = jsonData['results'] as List;
  //     final categoryNames =
  //         categoryList.map((category) => category['tag']['label']).toList();
  //     setState(() {
  //       categories = ['All Categories', ...categoryNames];
  //     });
  //   } else {
  //     print('Error fetching categories: ${response.statusCode}');
  //   }
  // }

Future<void> fetchCategories(BuildContext context) async {
  final apiUrl = 'http://api.adzuna.com/v1/api/jobs/gb/categories?app_id=db7a7949&app_key=c3831b1104d9aca46b5ed3af522f3170&&content-type=application/json'; // Replace with your API endpoint
  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final categoryList = jsonData['results'] as List;
    final categoryNames =
        categoryList.map<String>((category) => category['tag']['label']).toList();
    setState(() {
      categories = ['All Categories', ...categoryNames];
    });
  } else {
    print('Error fetching categories: ${response.statusCode}');
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('An error occurred while fetching categories.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}


  @override
  void initState() {
    super.initState();
    fetchCategories(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Job Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButton<String>(
              value: selectedCategory,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCategory = newValue;
                });
              },
              items: categories
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Search for jobs...',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Search Query: $searchQuery');
                print('Selected Category: $selectedCategory');
              },
              child: Text('Search Jobs'),
            ),
          ],
        ),
      ),
    );
  }
}
