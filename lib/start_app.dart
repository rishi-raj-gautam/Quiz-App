import 'package:flutter/material.dart';
class startApp extends StatelessWidget {
  const startApp(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/pngwing.com.png',width: 200,),
            OutlinedButton.icon(
              onPressed: startQuiz, 
            style:OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
            ),
          ],
        ),
      );
  }
}