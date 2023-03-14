import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobcolor,
      appBar: AppBar(
        backgroundColor: mobcolor,
        title: Image.asset(
          "name",
          color: primarycolor,
        ),
      ),
    );
  }
}
