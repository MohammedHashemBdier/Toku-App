import 'package:flutter/material.dart';
import 'package:toku/Screens/Home_Page.dart';

void main(List<String> args) {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
