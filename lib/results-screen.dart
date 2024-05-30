import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'You answered X out of Y questions correctly',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('List of questions and answers....'),
            const SizedBox(
              height: 20,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!',
            style: TextStyle(color: Colors.black))
            )
          ],
        ),
      ),
    );
  }


}