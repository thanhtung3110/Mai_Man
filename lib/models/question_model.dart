import 'package:cloud_firestore/cloud_firestore.dart';

class Question {
  String id;
  String title;
  Map<String, bool> options;
  int point;

  Question(
      {required this.id,
      required this.title,
      required this.options,
      required this.point});

  @override
  String toString() {
    return 'Question(id : $id, tilte :$title, options:$options,point:$point)';
  }
}
