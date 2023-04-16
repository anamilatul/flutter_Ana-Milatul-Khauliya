import 'package:flutter/material.dart';
import 'contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Project Form dan Advance Form',
      debugShowCheckedModeBanner: false,
      home: Contacts(),
    );
  }
}
