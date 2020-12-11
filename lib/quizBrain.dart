import './quizBody.dart';
import './resultPage.dart';
import 'package:flutter/material.dart';

import './questionBank.dart';

class QuizBrain extends StatefulWidget {
  @override
  _QuizBrainState createState() => _QuizBrainState();
}

class _QuizBrainState extends State<QuizBrain> {
  int questionIndex = 0;
  int score = 0;
  void answerQuestion(int answerScore) {
    score += answerScore;
    print(score);
    setState(() {
      questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (questionIndex < questionBank.length)
      return QuizBody(
        question: questionBank[questionIndex]['question'],
        options: questionBank[questionIndex]['answer'],
        answerQuestion: answerQuestion,
      );
    else
      return ResultPage(
        quizScore: score,
        resetQuiz: resetQuiz,
      );
  }
}
