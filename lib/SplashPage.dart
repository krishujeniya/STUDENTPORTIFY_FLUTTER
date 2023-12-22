// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'dart:async';
import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.portrait, // Use Flutter's built-in portfolio icon
              size: 250,
              color: Colors.black, // Set icon color
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

