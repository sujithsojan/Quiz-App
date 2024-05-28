import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = BlueHomeScreen(switchState);
    super.initState();
  }

  void switchState() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue.shade900, Colors.blue.shade500],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: activeScreen),
      ),
    );
  }
}
