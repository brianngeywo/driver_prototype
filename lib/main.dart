import 'package:flutter/material.dart';
import 'package:driver_prototype/general_screens/loading_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      cardColor: Colors.white,
    ),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingScreen();
  }
}

Color green = Color(0xFF0C9869);
