import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/models/data/question_list.dart';
class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(context) {
    final currentQuestion= questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text,style: const TextStyle(color: Colors.white)),
          const SizedBox(height:30),
          ...currentQuestion.answers.map((ans) {
            return AnswerButton(answerText: ans, onTap: (){});
          }
          )
        ],
      ),
    );
  }
}