import 'package:quizzler/questions.dart';

class Question{
  String questionText;
  bool questionAnswer;

    Question({required String q, required bool a}) :
    questionText = q,
    questionAnswer = a;
}
