import 'package:flutter/material.dart';
import 'package:logical_task1/QuizApp/quiz_model.dart';


class AnswerScreen extends StatefulWidget {
  List<String> answer;

  AnswerScreen({super.key, required this.answer});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  bool status = false;

  @override
  void initState() {
    checkAnswer();
    super.initState();
  }

  int itemlength = questionAndAnswer.length;
  int count = 0;
  List rightAnswer = [
    'Widgets',
    'By combining widgets in a visual editor',
    'Update data as UI changes',
    'StatefulWidget',
    'The UI is not updated',
    'By calling updateUI()',
  ];
  void checkAnswer() {
    setState(() {
      for (int i = 0; i < itemlength; i++) {
        if (rightAnswer[i] == widget.answer[i]) {
          count++;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Answer Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: itemlength,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(questionAndAnswer[index].question,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20)),
                          Text(
                            widget.answer[index],
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color:
                                    widget.answer[index] == rightAnswer[index]
                                        ? Colors.green
                                        : Colors.red),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Youre Right Answer Is $count",
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Row(
                children: [
                  const Text("Right Answer",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  Checkbox(
                    side: const BorderSide(color: Colors.white),
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value!;
                      });
                    },
                  ),
                ],
              ),
              Visibility(
                visible: status,
                child: const Text(
                  '''
      Widgets,
      By combining widgets in a visual editor,
      Update data as UI changes,
      StatefulWidget,
      The UI is not updated,
      By calling updateUI(),''',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
