import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(40, 255, 255, 255),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        side: const BorderSide(
          color: Color.fromARGB(150, 255, 255, 255),
        ),
      ),
      child: Text(answerText),
    );
  }
}
