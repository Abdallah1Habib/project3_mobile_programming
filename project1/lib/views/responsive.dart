import 'package:flutter/material.dart';
import 'package:project1/views/web.dart';

class Responsive extends StatefulWidget {
  final mobile;
  final web;
  const Responsive({Key? key, required this.mobile, required this.web})
      : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints) {
        if (BoxConstraints.maxWidth > 600) {
          return Webscreen();
        } else {}
      },
    );
  }
}
