import 'package:flutter/material.dart';



class StartQuiz extends StatelessWidget {
  const StartQuiz(this.startScreen,{super.key});
 
  final void Function() startScreen;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(164, 255, 255, 255) ,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Learn Flutter the fun way",
          style: TextStyle(color: Color.fromARGB(255, 213, 203, 220),
          fontSize: 24),
          
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          onPressed: startScreen,
          style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white
          ), 
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"),
        ),
      ],
    ),);
  }
}
