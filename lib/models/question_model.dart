import 'package:cloud_firestore/cloud_firestore.dart';

class Question {
  String id;
  String title;
  Map<String, bool> options;

  Question({
    required this.id,
    required this.title,
    required this.options,
    // required this.key
  });

  @override
  String toString() {
    return 'Question(id : $id, tilte :$title, options:$options)';
  }
}
