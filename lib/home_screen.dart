import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 120,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),
          const SizedBox(height: 25),
          const Text(
            'Flutter Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Learn Flutter the Fun Way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 35),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: FilledButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color.fromARGB(255, 90, 70, 200),
            ),
            icon: const Icon(Icons.arrow_forward_rounded),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
