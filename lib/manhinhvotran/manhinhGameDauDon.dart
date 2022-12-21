import 'dart:async';

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
int Isscore = 0;
int Sum = 0;
int o100 = 100;
int seconds = 20;
Timer? timer;

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
    title: 'phát biểu nào sau đây là đúng ?',
    options: {
      'Kiểm thử phần mền là 1 giai đoạn trong quá trình xây dựng phần mền':
          false,
      'Kiểm thử phần mềm là quá trình thực thi một chương trình xây dựng phần mền':
          true,
      'kiểm thử phầm mền có thể có hoặc không trong quá trình xây dựng phần mền':
          false,
      'Kiểm thử xảy ra trước khi phần mềm được xây dựng': false
    },
    point: 100,
  ),
  Question(
    id: '3',
    title: 'Những điều nào sau đây là một phần của kiểm thử hệ thống ?',
    options: {
      'performance, load and stress testing (kiểm thử hiệu năng, kiểm thử tốc độ tải và kiểm thử khả năng chịu tải).':
          false,
      'Requirements based testing ( kiểm thử dữ liệu yêu cầu ).': false,
      'Usability testing (kiểm thử khả năng sử dụng ).': false,
      'Cả 3 ý trên để đúng': true
    },
    point: 100,
  ),
  Question(
    id: '4',
    title:
        'Non- functional system testing (kiểm thử hệ thông phi chức năng ) bao gồm :',
    options: {
      'Kiểm thử để xem nới hệ thống không hoạt dông đúng chức năng': false,
      'kiểm thử các thuộc tính của hệ thống bao gồm hiệu năng va khả năng sử dụng':
          true,
      'kiểm tra các tính năng của hệ thống chỉ sử dụng phần mềm cần thiết cho chức năng đó':
          false,
      'kiểm thử các chức năng của hệ thống không tồn tại': false
    },
    point: 100,
  ),
  Question(
    id: '5',
    title:
        'Trong kì thi, thí sinh phải đạt tối thiểu 60% để đậu. điểm tối đacó thế ghi là 40 điểm. Xác định các giá trị tương đương  hợp lệ cho trường hợp đậu.',
    options: {
      '22,23,26.': false,
      '21,39,40.': false,
      '29,30,31.': true,
      '0,15,22.': false
    },
    point: 100,
  ),
  Question(
    id: '6',
    title:
        'Một hệ thống được thiết kế để tính toán thuế thu nhập cá nhân cho nhân viên trên cơ sở mức thu nhập.cách tính lũy tiền như sau :'
        " - 4.000.000 đầu tiên không tính thuế."
        "   -1.500.000 tiếp theo tính thuế 10%."
        "   -28.000.000 tiếp theo tính thuế 40%.",
    options: {
      '4.800.000, 14.000.00, 28.000.000': false,
      '5.200.000, 5.500.00, 28.000.000': false,
      '28.000.000, 32.000.00, 35.000.000': true,
      '5.800.000, 28.000.00, 32.000.000': false
    },
    point: 100,
  ),
  Question(
    id: '7',
    title:
        'cho 1 textbox nhập liệu kiểu số của 1 ứng dụng  được định nghĩa như sau : '
        "  "
        '       -input < 10 : không hợp lệ'
        '       -input thuộc [10,21] hợp lệ'
        '       -input > 21 : không hợp lệ',
    options: {
      '10, 11, 12.': true,
      '3 , 20, 21': false,
      '3, 10 , 22 ': false,
      '10, 21, 22': false
    },
    point: 100,
  ),
  Question(
    id: '8',
    title:
        'Một textbox nhập năm sinh, chỉ cho phép nhập các góa trị: 1900<= n <= 2004. sử dụng phương pháp phân tích giá trị biên thì cần các giá trị hợp lệ nào để kiểm thử cho textbox này ?',
    options: {
      '0, 1900, 2004, 2005': false,
      '1900, 2004': false,
      '1899, 1900, 2004, 2005': false,
      '1899, 1900, 1901, 2003, 2004, 2005': true
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
    title: 'Tên nào sau đây không phải đơn vị của kiểm thử ?',
    options: {
      'Unit Testing': false,
      'component Testing': false,
      'Module Testing': false,
      'integration testing': true
    },
    point: 100,
  ),
  Question(
    id: '11',
    title:
        'kỹ thuật nào dưới đấy KHÔNG phải là 1 kỹ thuật thiết kế test case ? )',
    options: {
      'equivalence partitioning': false,
      'Boundary value analysis': false,
      'True-False table': true,
      'Cause- Effect graph': false,
    },
    point: 100,
  ),
  Question(
    id: '12',
    title: 'Thành phần nào sau đây không lắm trong 1 test case ?',
    options: {
      'ID': false,
      'Actual result': true,
      'Expected result': false,
      'Precomdotion': false
    },
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
        Isscore = Score;
        Sum = Score ~/ 100;
        gotoNextQuestion();
      });
      if (index == _questions.length - 1) {
        setState(() {
          isPressed = false;
          index = 0;
          Score = 0;
          _questions = [];
          startTimer();
        });

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => manHinhThonhKe(
              result: Isscore,
              questionLenght: Sum,
            ),
          ),
        );
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

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          gotoNextQuestion();
          index++;
        }
      });
    });
  }

  gotoNextQuestion() {
    timer!.cancel();
    seconds = 20;
    startTimer();
  }

  @override
  void initState() {
    questions.shuffle();
    for (var i = 0; i < 10; i++) {
      _questions.add(questions[i]);
    }
    super.initState();
    startTimer();
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
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20,
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
                                          fontSize: 20,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "$seconds",
                    style: TextStyle(color: Color.fromARGB(255, 196, 90, 90)),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      value: seconds / 20,
                      valueColor: const AlwaysStoppedAnimation(Colors.white),
                    ),
                  ),
                ],
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
