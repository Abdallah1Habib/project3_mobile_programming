import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';

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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: primarycolor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: primarycolor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle,
              color: primarycolor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: primarycolor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: primarycolor,
            ),
          ),
        ],
      ),
    );
  }
}
