import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';

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
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: mobcolor,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: primarycolor,), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: secondarycolor,), label: ""),
      ]),
    );
  }
}
