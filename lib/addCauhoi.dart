import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({super.key});

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  final _fireStore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            _fireStore.collection("Questions").add({
              'Id': 120,
              'Title': "Tên gọi Tân Việt Cách mạng đảng có từ khi nào?",
              'Answer': ["Năm 1922", "Năm 1922", "Năm 1928", "Năm 1929"],
              'Key': 2,
              'Point': 150,
              'Subject': {'Id': 5, 'Title': "Lịch sử"},
              'Chapter': {'Id': 3, 'Title': "Về đích"}
            }).then((value) {
              final snackBar = SnackBar(content: Text("Thêm thành công"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }).onError((error, stackTrace) {
              final snackBar = SnackBar(content: Text("Có Lỗi Xảy Ra"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
          },
          child: Text("Nhấn vào")),
    ));
  }
}
