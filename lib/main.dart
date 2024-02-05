import 'package:flutter/material.dart';
import 'package:flutter_quiz/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 190, 110, 210),
                Color.fromARGB(255, 90, 70, 200),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const HomeScreen(),
        ),
      ),
    ),
  );
}
