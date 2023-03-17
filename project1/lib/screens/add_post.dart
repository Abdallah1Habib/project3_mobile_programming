import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';

class Addpost extends StatefulWidget {
  const Addpost({super.key});

  @override
  State<Addpost> createState() => _HomeState();
}

class _HomeState extends State<Addpost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobcolor,
      appBar: AppBar(title: Text("Addpost")),
    );
  }
}
