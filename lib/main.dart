//packages
import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

import './question.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Snake', 'score': 3},
        {'text': 'Cow', 'score': 1},
      ],
    },
    {
      'questionText': 'who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Tim', 'score': 5},
        {'text': 'TIM', 'score': 3},
        {'text': 'MAX', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  int _totalScore= 0;

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      if (this._questionIndex < _questions.length - 1) {
        this._questionIndex += 1;
      } else {
        this._questionIndex += 1;
        print("No more _questions");
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   var _questionIndex = 0;

//   void answerQuestion() {
//     if (this._questionIndex == 1) {
//       this._questionIndex += 1;
//     } else {
//       this._questionIndex -= 1;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     var _questions = [
//       'What\'s your favorite color?',
//       'what\'s your favorite animal?',
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('MY First App'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Text(_questions[0]),
//             RaisedButton(
//               child: Text('Answer 1'),
//               onPressed: () => answerQuestion(),
//             ),
//             RaisedButton(
//               child: Text('Answer 2'),
//               onPressed: () => print('Answer chosen 2!'),
//             ),
//             RaisedButton(
//               child: Text('Answer 3'),
//               onPressed: () => print('Answer chosen 3!'),
//             ),
//             RaisedButton(
//               child: Text('Answer 4'),
//               onPressed: () => print('Answer chosen 4!'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
