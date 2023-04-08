import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/create_page.dart';
import 'package:flutter_animation/provider/contact_provider.dart';
import 'package:provider/provider.dart';
import 'pages/contact_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ContactProvider>(
        create: (_) => ContactProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
      ),
      title: 'Task Flutter Animation',
      initialRoute: '/',
      routes: {
        '/': (context) => const ContactPage(),
        '/createContact': (context) => CreatePage(),
      },
    );
  }
}
