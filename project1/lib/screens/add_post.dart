import 'package:flutter/material.dart';

class Addpost extends StatefulWidget {
  const Addpost({super.key});

  @override
  State<Addpost> createState() => _HomeState();
}

class _HomeState extends State<Addpost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Addpost")),
    );
  }
}
