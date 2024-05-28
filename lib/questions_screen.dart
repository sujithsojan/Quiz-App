import 'package:adv_basics/answers.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Answers(
            answerText: currentQuestion.answers[0],
            onTap: () {},
          ),
          Answers(
            answerText: currentQuestion.answers[1],
            onTap: () {},
          ),
          Answers(
            answerText: currentQuestion.answers[2],
            onTap: () {},
          ),
          Answers(
            answerText: currentQuestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
