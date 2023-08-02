import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});
  @override
  State<SearchBox> createState() {
    return _SearchBoxState();
  }
}
 
class _SearchBoxState extends State<SearchBox> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 90, 4, 187),
              Color.fromARGB(255, 50, 4, 102),
            ],begin: Alignment.topLeft, end: Alignment.bottomRight ),
          ),
        ),
        
        TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
