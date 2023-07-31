import 'dart:async';

import 'package:flutter/material.dart';
import 'package:driver_prototype/animation_constants.dart';

import 'authentication/presentation/pages/welcome_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        CustomTransitions()
            .rightToLeftSlideTransitionPageBuilder(const InitialWelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
            CircularProgressIndicator(
              color: Colors.black,
            ),
            SizedBox(height: 22),
            Text(
              'Loading...',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
