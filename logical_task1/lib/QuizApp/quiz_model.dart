import 'package:flutter/material.dart';

class ModelQuiz {
  String question;
  List answer = [String];

  ModelQuiz({required this.question, required this.answer});
}

final questionAndAnswer = [
  ModelQuiz(
      question: "What are the main building blocks of Flutter Uis?",
      answer: ["Widget", "Components", "Blocks", "Function"]),
  ModelQuiz(question: "How are flutter UIs built?", answer: [
    "By combining widgets in code",
    "By combining widgets in a visual editoe",
    "By defining widgets in confing file",
    "By using Xcode for ios and Android Studio for Android"
  ]),
  ModelQuiz(
    question: 'Whats the purpose of a StatefulWidget?',
    answer: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  ModelQuiz(
    question:
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answer: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  ModelQuiz(
    question: 'What happens if you change data in a StatelessWidget?',
    answer: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  ModelQuiz(
    question: 'How should you update data inside of StatefulWidgets?',
    answer: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
