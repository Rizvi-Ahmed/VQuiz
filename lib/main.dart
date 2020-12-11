import 'package:app/quizBrain.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

List<String> question = ['What is your  name', 'What\'s your age'];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Quiz App'),
          ),
        ),
        body: QuizBrain(),
      ),
    );
  }
}
