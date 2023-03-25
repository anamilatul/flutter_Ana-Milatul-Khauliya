import 'package:flutter/material.dart';
import 'package:flutter_form/advance_form.dart';
import 'contact_page.dart';
import 'advance_form.dart';
import 'mixed_contact_and_picker.dart';

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
      home: ContactAndPicker(),
    );
  }
}
