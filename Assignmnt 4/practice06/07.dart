// Create a simple quiz application using OOP that allows users to play and view their score.

import 'dart:io';

class Question {
  String ques;
  List<String> options;
  int correct_Ans;

  Question(this.ques, this.options, this.correct_Ans);

  bool isCorrect(int choice) {
    return choice == correct_Ans;
  }
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    print('Welcome to the LUCC Quiz Game!\n');
    for (int i = 0; i < questions.length; i++) {
      var q = questions[i];
      print('Question ${i + 1}: ${q.ques}');
      for (int j = 0; j < q.options.length; j++) {
        print('${j + 1}. ${q.options[j]}');
      }

      stdout.write('Enter your answer (1-${q.options.length}): ');
      String? input = stdin.readLineSync();
      int? answer = int.tryParse(input ?? '');

      if (answer != null && answer >= 1 && answer <= q.options.length) {
        if (q.isCorrect(answer - 1)) {
          print('Correct!\n');
          score++;
        } else {
          print('Wrong! Correct answer: ${q.options[q.correct_Ans]}\n');
        }
      } else {
        print('Invalid input! Skipping question.\n');
      }
    }

    print('Quiz finished!');
    print('Your final score: $score / ${questions.length}');
  }
}

void main() {
  List<Question> questionList = [
    Question('What does LUCC stand for?', [
      'Leading University Coding Club',
      'Leading University Creative Community',
      'Leading University Cultural Circle',
      'Leading University Chess Club'
    ], 0),
    Question('When was LUCC founded?', ['2015', '2018', '2016', '2014'], 2),
    Question('Who is the current president of LUCC?', [
      'Sakib',
      'Rafi',
      'Tahmid',
      'Unknown'
    ], 3),
    Question('Which event is organized by LUCC annually?', [
      'Tech Carnival',
      'LUCC Fest',
      'LUCC CodeStorm',
      'LUCC TechNova'
    ], 2),
    Question('LUCC mainly focuses on which area?', [
      'Sports',
      'Coding and Problem Solving',
      'Cultural Events',
      'Music'
    ], 1),
    Question('Where is LUCC based?', [
      'Dhaka',
      'Sylhet',
      'Chittagong',
      'Rajshahi'
    ], 1),
    Question('Which programming language is often used in LUCC contests?', [
      'Python',
      'Java',
      'C++',
      'JavaScript'
    ], 2),
  ];

  Quiz quiz = Quiz(questionList);
  quiz.start();
}
