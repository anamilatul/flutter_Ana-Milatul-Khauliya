import 'package:flutter/material.dart';
import 'pages/gridview_page.dart';
import 'package:provider/provider.dart';
import 'provider/image_provider.dart' as image_stores;

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<image_stores.ImageProvider>(
        create: (_) => image_stores.ImageProvider(),
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
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'Poppins',
      ),
      title: 'Task Provider',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const GridPage(),
      },
    );
  }
}
