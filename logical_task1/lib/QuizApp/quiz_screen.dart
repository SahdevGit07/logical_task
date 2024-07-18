
import 'package:flutter/material.dart';
import 'package:logical_task1/QuizApp/quiz_model.dart';

import 'answer_screen.dart';
import 'common_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int itemlength = questionAndAnswer.length;
  int currentIndex = 0;
  List<String> rightAnswer = [];
  void function({required String value}) {
    setState(() {
      if (currentIndex < itemlength - 1) {
        rightAnswer.add(value);
        currentIndex++;
      }else {
        rightAnswer.add(value);
        Navigator.push(context, MaterialPageRoute(builder: (context) => AnswerScreen(answer: rightAnswer),));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questionandanswerDataList = questionAndAnswer[currentIndex];


    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Center(
                  child: Text(
                    questionandanswerDataList.question,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              ...questionandanswerDataList.answer.map((element) {
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CommonButton(
                    text: element,
                    onPressed: () {
                      function(value: element);
                    },
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
