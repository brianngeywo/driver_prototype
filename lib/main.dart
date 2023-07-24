import 'package:driver_prototype/static_data.dart';
import 'package:driver_prototype/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import 'airbnb_list_page.dart';
import 'airbnb_view_page.dart';
import 'car_selection_indicator.dart';
import 'custom_animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
// color: Colors.black
        )
      ),
      home:  HomeScreen(),
    );
  }
}