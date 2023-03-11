import 'package:flutter/material.dart';
import 'package:project1/views/responsive.dart';
import 'package:project1/views/web.dart';

import 'views/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Responsive(
        mobile: Mobilescreen(),
        web: Webscreen(),
      ),
    );
  }
}
