import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int quizScore;
  final Function resetQuiz;

  ResultPage({this.quizScore, this.resetQuiz});

  String get opinion {
    if (quizScore < 10)
      return 'You are a person with good personality.';
    else if (quizScore < 15)
      return 'You are an okay person.';
    else
      return 'You are strange.';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          child: Center(
            child: Text(
              'Your Score : $quizScore\n' + opinion,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        FlatButton(
          color: Colors.blue[200],
          child: Text('Reset Quiz'),
          onPressed: resetQuiz,
        ),
      ],
    );
  }
}
