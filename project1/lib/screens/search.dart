import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _HomeState();
}

class _HomeState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobcolor,
      appBar: AppBar(
          backgroundColor: mobcolor,
          title: TextFormField(
            decoration:
                const InputDecoration(labelText: "Search for a user..."),
          )),
    );
  }
}
