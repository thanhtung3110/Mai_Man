import 'package:flutter_application_1/models/question_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DBconnect {
  final url = Uri.parse(
      'https://do-an-fb613-default-rtdb.firebaseio.com/questions.json');
  Future<void> addQuestion(Question question) async {
    http.post(url,
        body: json.encode({
          'title': question.title,
          'options': question.options,
        }));
  }
}
