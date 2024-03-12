import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/start_app.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   var activeScreen='start-screen';
   

   void switchScreen(){
    setState(() {
      activeScreen='question-screen';
    });
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 72, 181, 197),
                Color.fromARGB(255, 56, 75, 146),
              ]),
            ),
            child: activeScreen=='start-screen'
            ?startApp(switchScreen)
            :const QuestionPage(),
            ),
      ),
    );
  }
}