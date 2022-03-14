// ignore_for_file: prefer_const_constructors

// import 'dart:js';
// import 'package:flutter/cupertino.dart';
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_quiz5/questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuestionBrain {
  int rightNumbers = 0;
  int questionNumber = 0;
  List<Widget> myIcons = [];
  final List<Questions> _myQuestions = [
    Questions(
        question: ' Who was elected President of United States in 2017?',
        choiceA: ' Donald Trump ',
        choiceB: 'Barack obama',
        choiceC: 'George Bush',
        choiceD: 'vladmir putin',
        answer: 1),
    Questions(
        question: ' How many colors in the Rainbow?',
        choiceA: 'five',
        choiceB: 'seven',
        choiceC: 'six',
        choiceD: 'eight',
        answer: 2),
    Questions(
        question: ' What is the currency of Pakistan?',
        choiceA: 'Pound',
        choiceB: 'Rupee',
        choiceC: 'Riyal',
        choiceD: 'Euro',
        answer: 2),
    Questions(
        question: ' What does independence mean?',
        choiceA: 'Free will',
        choiceB: 'Permission',
        choiceC: 'Freedom',
        choiceD: 'Goodwill',
        answer: 3),
    Questions(
        question: 'About how much area of Antarctica is covered with ice?',
        choiceA: '98%',
        choiceB: '90%',
        choiceC: '80%',
        choiceD: '70%',
        answer: 1),
    Questions(
        question: 'Which building can be taller during summer by 15 cm?',
        choiceA: 'Eiffel Tower',
        choiceB: 'Burj Khalifa',
        choiceC: 'One world trade center',
        choiceD: 'None',
        answer: 1),
    Questions(
        question: 'Biggest building in the world is:',
        choiceA: 'Eiffel Tower',
        choiceB: 'Burj Khalifa',
        choiceC: 'One world trade center',
        choiceD: 'None',
        answer: 2),
    Questions(
        question: 'Which country moves 7.5 cm every year?',
        choiceA: 'Hawii',
        choiceB: 'Albania',
        choiceC: 'Algeria',
        choiceD: 'Greenland',
        answer: 1)
  ];

  String getQuestion() {
    return _myQuestions[questionNumber].question;
  }

  String getCoiceA() {
    return _myQuestions[questionNumber].choiceA;
  }

  String getCoiceB() {
    return _myQuestions[questionNumber].choiceB;
  }

  String getCoiceC() {
    return _myQuestions[questionNumber].choiceC;
  }

  String getCoiceD() {
    return _myQuestions[questionNumber].choiceD;
  }

  void answerTracker(int answer, BuildContext context) {
    if (answer == _myQuestions[questionNumber].answer) {
      myIcons.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
      rightNumbers++;
    } else {
      myIcons.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
    _nextQuestion(context);
  }

  void _nextQuestion(BuildContext context) {
    if (questionNumber < _myQuestions.length - 1) {
      questionNumber++;
    } else {
      Alert(
        context: context,
        type: AlertType.none,
        title: 'GOOD JOB',
        desc: 'you get $rightNumbers out of eight questions',
        buttons: [DialogButton(child: Text('Done'), onPressed: () {})],
      ).show();
      questionNumber = 0;
      rightNumbers = 0;
      myIcons.clear();
    }
  }
}
