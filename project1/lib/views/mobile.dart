import 'package:flutter/material.dart';

class Mobilescreen extends StatefulWidget {
  const Mobilescreen({super.key});

  @override
  State<Mobilescreen> createState() => _MobilescreenState();
}

class _MobilescreenState extends State<Mobilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile screen"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        
      ]),
    );
  }
}
