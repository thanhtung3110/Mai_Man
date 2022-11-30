import 'package:flutter/material.dart';

import '../manhinhgame/manhinhChonCheDogame.dart';
import '../trangchu/manhinhchinh.dart';

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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => manhinhchinh(),
                                        ));
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
