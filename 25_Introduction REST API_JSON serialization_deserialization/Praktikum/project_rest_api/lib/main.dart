import 'package:flutter/material.dart';
import 'package:project_rest_api/pages/prioritas1.dart';
import 'package:project_rest_api/pages/prioritas2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Prioritas1(),
    );
  }
}
