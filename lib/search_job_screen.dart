import 'package:flutter/material.dart';

class SearchJobScreen extends StatefulWidget{
  const SearchJobScreen({super.key});
  @override
  State<SearchJobScreen> createState(){
    return _SearchJobScreenState();
  }
}
  class _SearchJobScreenState extends State<SearchJobScreen>{
    @override
    Widget build(context){
      return const Text('Search Job');
    }
  }