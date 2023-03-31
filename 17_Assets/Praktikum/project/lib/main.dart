import 'package:flutter/material.dart';
import 'home.dart';
import 'tugas_assets_dialog_bottom_sheet_navigation/gallery_page.dart';
import 'tugas_form_advanceform/mixed_contact_and_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      title: 'Flutter Assets, Dialog Bottom Sheet, Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/gallery': (context) => GalleryPage(),
        '/formAdvanceForm': (context) => const ContactAndPicker(),
      },
    );
  }
}
