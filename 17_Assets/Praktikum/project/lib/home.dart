import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 237, 223),
      appBar: AppBar(
        title: Text(
          'Daftar Tugas',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Tugas Section 16'),
            subtitle:
                const Text('Flutter Form (Form Input Button) dan Advance Form'),
            trailing: const Icon(Icons.note),
            onTap: () {
              Navigator.pushNamed(context, '/formAdvanceForm');
            },
          ),
          ListTile(
            title: const Text('Tugas Section 17,18,19'),
            subtitle: const Text('Assets, Dialog Bottom Sheet dan Navigation'),
            trailing: const Icon(Icons.note),
            onTap: () {
              Navigator.pushNamed(context, '/gallery');
            },
          ),
        ],
      ),
    );
  }
}
