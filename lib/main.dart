// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_quiz5/questionbrain.dart';
// import 'package:my_quiz4/questionbrain.dart';

QuestionBrain question = QuestionBrain();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text('QUIZ QUESTIONS'),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: QuizBody(),
          ),
        ),
      ),
    );
  }
}

class QuizBody extends StatefulWidget {
  @override
  State<QuizBody> createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                question.getQuestion(),
                style: TextStyle(color: Colors.amber.shade50, fontSize: 25.0),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FlatButton(
                      height: 100.0,
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () {
                        setState(() {
                          int rightAnswer = 1;
                          question.answerTracker(rightAnswer, context);
                        });
                      },
                      child: Text(
                        question.getCoiceA(),
                        style: TextStyle(
                            color: Colors.amber.shade100, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FlatButton(
                      height: 100.0,
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () {
                        setState(() {
                          int rightAnswer = 2;
                          question.answerTracker(rightAnswer, context);
                        });
                      },
                      child: Text(
                        question.getCoiceB(),
                        style: TextStyle(
                            color: Colors.amber.shade100, fontSize: 20.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FlatButton(
                      height: 100.0,
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () {
                        setState(() {
                          int rightAnswer = 3;
                          question.answerTracker(rightAnswer, context);
                        });
                      },
                      child: Text(
                        question.getCoiceC(),
                        style: TextStyle(
                            color: Colors.amber.shade100, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FlatButton(
                      height: 100.0,
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () {
                        setState(() {
                          int rightAnswer = 4;
                          question.answerTracker(rightAnswer, context);
                        });
                      },
                      child: Text(
                        question.getCoiceD(),
                        style: TextStyle(
                            color: Colors.amber.shade100, fontSize: 20.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(children: question.myIcons)
        ],
      ),
    );
  }
}
