// ignore_for_file: prefer_typing_uninitialized_variables, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';

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
          return widget.web;
        } else {
          return widget.mobile;
        }
      },
    );
  }
}
