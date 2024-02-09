import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          ),
          const SizedBox(height: 25),
          Text(
            'Flutter Quiz',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Learn Flutter the Fun Way',
            style: GoogleFonts.lato(
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
            label: Text(
              'Start Quiz',
              style: GoogleFonts.lato(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
