import 'package:flutter/material.dart';

import 'package:quiz/data/questions.dart';
import 'package:quiz/models/answer_button.dart';

class QuestionSession extends StatefulWidget {
  const QuestionSession({super.key,required this.onSelectAnswer});

final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionSession> createState() {
    return _QuestionSessionState();
  }
}

class _QuestionSessionState extends State<QuestionSession> {

var currentQuestionIndex=0;

void answerQuestion(String selectedAnswers){
  widget.onSelectAnswer(selectedAnswers);
  setState(() {
    currentQuestionIndex++;
  });
}

  @override
  Widget build(context) {
   final currentQuestion=questions[currentQuestionIndex];


    return SizedBox(
    
      width: double.infinity,
      child:Container(
        margin:const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Text(
            currentQuestion.text,
            style: const TextStyle(color: Color.fromARGB(255, 212, 183, 249),fontSize: 24,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledanswers().map((answer) {
          return AnswerButton(answerText: answer,onTap:() {
            answerQuestion(answer);
          },);
          }
          ),
          
          
        ],
      ),
    ));
  }
}
