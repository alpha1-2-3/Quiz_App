

import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/question_session.dart';
import 'package:quiz/start_quiz.dart';
import 'package:quiz/results_screen.dart';

class Quiz extends StatefulWidget{
   const Quiz({super.key});
  @override
  State<Quiz> createState(){
     return _QuizState();
  }
}

class _QuizState extends State<Quiz>{

List<String> selectedAnswers=[];

 var activeScreen='Start-screen';

void switchScreen(){
    setState(() {
      activeScreen= 'Question-Session';
    });
    
  }
void chooseAnswers(String answer){
  selectedAnswers.add(answer);


  if (selectedAnswers.length==questions.length){
    setState(() {
      
      activeScreen='results-session';
    });
  }
}
void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context){

  Widget screenWidget=StartQuiz(switchScreen);

  if (activeScreen=='Question-Session'){
     screenWidget=QuestionSession(onSelectAnswer: chooseAnswers);
  }


  if(activeScreen=='results-session'){
     screenWidget= ResultsScreen(chosenAnswers: selectedAnswers,onRestart: restartQuiz,);
  }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 103, 26, 142),
                Color.fromARGB(255, 45, 23, 130),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget ,
      ),
    ),
    );
  
}
  }
