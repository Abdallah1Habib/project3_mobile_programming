import 'package:flutter/material.dart';
import 'package:project1/views/responsive.dart';

import 'views/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Responsive(mobile: , web: ,),
    );
  }
}
