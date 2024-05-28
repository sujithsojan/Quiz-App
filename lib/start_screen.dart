import 'package:flutter/material.dart';

class BlueHomeScreen extends StatelessWidget {
  const BlueHomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, 
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz_logo.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Learn flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(
                height: 20), 
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white, 
                shadowColor: const Color.fromARGB(
                    0, 194, 185, 185), 
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
