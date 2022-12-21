import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/manhinhgame/manhinhChonCheDogame.dart';
import 'package:flutter_application_1/manhinhvotran/manhinhGameDauDon.dart';
import 'package:flutter_application_1/models/question_model.dart';
import 'package:flutter_application_1/trangchu/manhinhchinh.dart';

class manHinhThonhKe extends StatelessWidget {
  const manHinhThonhKe(
      {super.key, required this.result, required this.questionLenght});
  final int result;
  final int questionLenght;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
          color: Color.fromARGB(220, 65, 142, 220),
          child: Column(children: [
            Text(
              "Thống kế trận",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              FirebaseAuth.instance.currentUser!.email!,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.brown,
                      child: Column(
                        children: [
                          Text(
                            "Số câu ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "$questionLenght/10",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.brown,
                      child: Column(
                        children: [
                          Text(
                            "điểm",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "$result",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              color: Colors.brown,
              width: 200,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Tổng",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$result/1000',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(190, 125, 60, 143),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                margin: EdgeInsets.all(10),
                width: 250,
                height: 82.5,
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => trangChonCheDo(),
                          ),
                          (route) => false);
                    },
                    child: const Text(
                      'Play again',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ))),
            Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                margin: EdgeInsets.all(10),
                width: 250,
                height: 82.5,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => manhinhchinh(),
                          ),
                          (route) => false);
                    },
                    child: const Text(
                      'Home',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ))),
          ])),
    );
  }
}
