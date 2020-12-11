import 'package:flutter/material.dart';

class QuizBody extends StatelessWidget {
  final String question;
  final options;
  final Function answerQuestion;

  QuizBody({
    @required this.question,
    @required this.options,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          heightFactor: 2,
          child: Text(
            question,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...(options as List<Map<String, Object>>).map((option) {
          return Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue[300],
              child: Text(
                option['text'],
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () => answerQuestion(option['score']),
            ),
          );
        }).toList(),
      ],
    );
  }
}
