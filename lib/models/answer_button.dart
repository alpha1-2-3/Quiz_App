import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 134, 45, 163),
        foregroundColor: Colors.white,
        padding:const EdgeInsets.symmetric(horizontal: 40,vertical: 10) 
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
