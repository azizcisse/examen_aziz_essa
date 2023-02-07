import 'package:flutter/material.dart';
import 'package:examen_aziz_essa/login/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CURRICULUM VITAE',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.blue,
        canvasColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WelcomePage(),
    );
  }
}
