import 'package:flutter/material.dart';
import 'package:flutter_application_1/manhinhvotran/manHinhThongKe.dart';
import 'package:flutter_application_1/models/question_model.dart';

import 'package:flutter_application_1/trangchu/manhinhchinh.dart';
import '../constants.dart';

final String question = _questions[index].title;
final int indexAction = index;
final String totalQuestion = _questions.length as String;
int index = 0;
late final bool isClicked;

bool isPressed = false;
int Score = 0;

class manhinhvotranDAUDON extends StatefulWidget {
  const manhinhvotranDAUDON({super.key});

  @override
  State<manhinhvotranDAUDON> createState() => _manhinhvotranDAUDONState();
}

List<Question> questions = [
  Question(
    id: '1',
    title: 'what is 2 + 2 =?',
    options: {'5': false, '2': false, '4': true, '3': false},
    point: 100,
  ),
  Question(
    id: '2',
    title: 'what is 3 + 2 =?',
    options: {'5': true, '2': false, '4': false, '3': false},
    point: 100,
  ),
  Question(
    id: '3',
    title: 'what is 1 + 2 =?',
    options: {'5': false, '2': false, '4': false, '3': true},
    point: 100,
  ),
  Question(
    id: '4',
    title: 'what is 6 - 2 =?',
    options: {'5': false, '2': false, '4': true, '3': false},
    point: 100,
  ),
  Question(
    id: '5',
    title: 'what is 4 + 4 =?',
    options: {'5': false, '2': false, '4': false, '8': true},
    point: 100,
  ),
  Question(
    id: '6',
    title: 'what is 1 + 9 =?',
    options: {'5': false, '10': true, '4': false, '3': false},
    point: 100,
  ),
  Question(
    id: '7',
    title: 'Thủ đô của việt nam ?',
    options: {
      'Hà giang': false,
      'Hà Nội': false,
      'TP.HCM': true,
      'Đà lạt': false
    },
    point: 100,
  ),
  Question(
    id: '8',
    title: 'Con nào bới nhanh hơn lươn ?',
    options: {
      'con Cá': true,
      'Con bò': false,
      'Con mèo': false,
      'Con giun': false
    },
    point: 100,
  ),
  Question(
    id: '9',
    title:
        'Đâu không phải là công trình kiến trúc nổi tiếng bậc nhât thế giới ?',
    options: {
      'Đền thời mặt trời Konark': false,
      'Tòa nhà the Gherkin': false,
      'Khu du lịch Suối tiên': true,
      'Bảo tàng Hagia Sophia': false
    },
    point: 100,
  ),
  Question(
    id: '10',
    title: 'what is 6 - 2 =?',
    options: {
      'Đền thời mặt trời Konark': false,
      'Tòa nhà the Gherkin': false,
      'Khu du lịch Suối tiên': true,
      'Bảo tàng Hagia Sophia': false
    },
    point: 100,
  ),
  Question(
    id: '11',
    title: 'Choose the correct word ( Chọn từ đúng )',
    options: {
      'One ( số 2 )': false,
      'Three ( số 2 )': false,
      'Two ( số 3 )': false,
      'One ( số 1 )': true
    },
    point: 100,
  ),
  Question(
    id: '12',
    title: 'what is 1 + 9 =?',
    options: {'5': false, '10': true, '4': false, '3': false},
    point: 100,
  ),
];
List<Question> _questions = [];

class _manhinhvotranDAUDONState extends State<manhinhvotranDAUDON> {
  void nextQuestion(int points, bool isCoore) {
    if (!isPressed) {
      setState(() {
        isPressed = true;
        Score += isCoore ? points : 0;
      });
      if (index == _questions.length - 1) {
        setState(() {
          isPressed = false;
          index = 0;
        });
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => manHinhThonhKe()));
      } else {
        Future.delayed(
          Duration(seconds: 1),
          () {
            setState(() {
              index++;
              isPressed = false;
            });
          },
        );
      }
    }
  }

  @override
  void initState() {
    questions.shuffle();
    for (var i = 0; i < 10; i++) {
      _questions.add(questions[i]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.black,
            child: Container(
              child: Column(
                children: [
                  hearderGame(),
                  Expanded(
                    flex: 10,
                    child: Container(
                      color: Color.fromARGB(255, 64, 4, 60),
                      child: Column(children: [
                        Container(
                          width: 400,
                          height: 250,
                          color: Color.fromARGB(99, 166, 160, 160),
                          child: Text(
                            '${_questions[index].title}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 175, 230, 255),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Column(
                            children: [
                              for (int i = 0;
                                  i < _questions[index].options.length;
                                  i++)
                                Container(
                                  margin: EdgeInsets.all(1),
                                  width: 390,
                                  height: 82.5,
                                  color: isPressed
                                      ? _questions[index]
                                                  .options
                                                  .values
                                                  .toList()[i] ==
                                              true
                                          ? correct
                                          : incorrect
                                      : neutral,
                                  child: GestureDetector(
                                    onTap: () {
                                      nextQuestion(
                                          _questions[index].point,
                                          _questions[index]
                                              .options
                                              .values
                                              .toList()[i]);
                                    },
                                    child: Text(
                                      _questions[index]
                                          .options
                                          .keys
                                          .toList()[i],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                      textAlign: (TextAlign.center),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                  footerGame(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

outGame() {}

//heard tron gamr
class hearderGame extends StatefulWidget {
  const hearderGame({super.key});

  @override
  State<hearderGame> createState() => _hearderGameState();
}

class _hearderGameState extends State<hearderGame> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            color: Colors.red,
            height: 3,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(105, 91, 90, 90),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => setiingingame(),
                          ));
                    },
                    icon: Icon(
                      Icons.settings_applications_outlined,
                      size: 35,
                      color: Colors.white,
                    )),
              ),
              Container(
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(105, 91, 90, 90),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.zoom_in,
                      size: 35,
                      color: Colors.white,
                    )),
              ),
              Container(
                margin: EdgeInsets.all(2),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color.fromARGB(102, 235, 233, 233),
                      width: 2,
                      style: BorderStyle.solid),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 190, 72),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            bottomLeft: Radius.circular(6)),
                        border: Border.all(
                            color: Color.fromARGB(43, 236, 236, 236),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            bottomLeft: Radius.circular(6)),
                        border: Border.all(
                            color: Color.fromARGB(43, 236, 236, 236),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                    ),
                    Container(
                        child: Image.asset(
                      'assets/favorite.png',
                    )),
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 40,
                margin: EdgeInsets.all(2),
                color: Color.fromARGB(105, 91, 90, 90),
                child: Text(
                  '${index + 1}/10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 183, 236, 91),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  '$Score',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//end heard

//footder
class footerGame extends StatefulWidget {
  const footerGame({super.key});

  @override
  State<footerGame> createState() => _footerGameState();
}

class _footerGameState extends State<footerGame> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Container(
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(90, 138, 130, 19),
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/snowflake.png')))),
          Container(
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(101, 226, 54, 54),
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/star_1.png')))),
          Container(
            child: SizedBox(
              width: 100,
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(101, 48, 65, 221),
                ),
                onPressed: () {},
                child: Image.asset('assets/half.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//footder end

//context

class setiingingame extends StatefulWidget {
  const setiingingame({super.key});

  @override
  State<setiingingame> createState() => _setiingingameState();
}

class _setiingingameState extends State<setiingingame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(159, 101, 99, 94),
                height: 250,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Icon(
                              Icons.transfer_within_a_station_rounded,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Icon(
                              Icons.flag_rounded,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(children: [
                        Container(
                          width: 80,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            border: Border.all(
                                color: Color.fromARGB(43, 236, 236, 236),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(
                                color: Color.fromARGB(43, 236, 236, 236),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            border: Border.all(
                                color: Color.fromARGB(43, 236, 236, 236),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                              child: Text(
                            "Bắt đầu",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                              child: Text(
                            "Kết thúc",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(190, 125, 60, 143),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                              ),
                              margin: EdgeInsets.all(1),
                              width: 150,
                              height: 82.5,
                              child: TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: Text(
                                    'Tiếp tục',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ))),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                              ),
                              margin: EdgeInsets.all(1),
                              width: 150,
                              height: 82.5,
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isPressed = false;
                                      index = 0;
                                    });
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                manhinhchinh()),
                                        (route) => false);
                                  },
                                  child: Text(
                                    'Thoát',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text("cài đặt",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Container(
                height: 100,
                color: Color.fromARGB(157, 87, 86, 85),
                child: Row(
                  children: [
                    Icon(
                      Icons.volume_down_alt,
                      color: Colors.white,
                      size: 100,
                    ),
                    Text("âm thanh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Row(
                children: [
                  Text("cài đặt",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Container(
                color: Color.fromARGB(157, 87, 86, 85),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: Color.fromARGB(56, 122, 121, 121),
                          ),
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Image.asset('assets/man.png'),
                              Text("Me",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: Color.fromARGB(56, 122, 121, 121),
                          ),
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Image.asset('assets/spiderman.png'),
                              Text("siêu nhân",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: Color.fromARGB(56, 122, 121, 121),
                          ),
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Image.asset('assets/girl1.png'),
                              Text("Linh",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: Color.fromARGB(56, 122, 121, 121),
                            ),
                            width: 100,
                            height: 100,
                            child: Column(
                              children: [
                                Image.asset('assets/scientist.png'),
                                Text("TMCK",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: Color.fromARGB(56, 122, 121, 121),
                            ),
                            width: 100,
                            height: 100,
                            child: Column(
                              children: [
                                Image.asset('assets/hacker.png'),
                                Text("Xxuan",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ])
                  ],
                ),
              )
            ],
          ),
        ))));
  }
}
