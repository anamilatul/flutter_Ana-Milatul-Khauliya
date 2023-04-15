import 'package:flutter/material.dart';
import 'package:project_mvvm_architecture/screen/contact/contact_screen.dart';
import 'package:project_mvvm_architecture/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.amber),
        home: ContactScreen(),
      ),
    ),
  );
}
