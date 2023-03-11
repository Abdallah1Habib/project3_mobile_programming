import 'package:flutter/material.dart';

class Webscreen extends StatefulWidget {
  const Webscreen({super.key});

  @override
  State<Webscreen> createState() => _WebscreenState();
}

class _WebscreenState extends State<Webscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web screen"),
      ),
    );
  }
}
