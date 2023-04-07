import 'dart:io';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imagePath;
  const DetailPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 237, 223),
      appBar: AppBar(
        title: const Text(
          'Detail Page',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 15),
            child: Image.file(
              File(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
