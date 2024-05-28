import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  const Answers({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
      ),
    child: Text(answerText));
  }
}
