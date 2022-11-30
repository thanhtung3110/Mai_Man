import 'package:flutter/material.dart';
import 'package:flutter_application_1/manhinhgame/manhinhChonCheDogame.dart';
import 'package:flutter_application_1/trangchu/manhinhchinh.dart';

class manHinhThonhKe extends StatefulWidget {
  const manHinhThonhKe({super.key});

  @override
  State<manHinhThonhKe> createState() => _manHinhThonhKeNState();
}

class _manHinhThonhKeNState extends State<manHinhThonhKe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                body: Container(
                    color: Color.fromARGB(220, 88, 14, 9),
                    child: Column(children: [
                      Text(
                        "Thống kế trận",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Image.asset('assets/man_3.png'),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Kaka',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  color: Color.fromARGB(161, 107, 106, 104),
                                  margin: EdgeInsets.all(2),
                                  child: Text("Đấu rank",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            Container(
                              child: Image.asset(
                                'assets/badge.png',
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("chính sác",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              width: 280,
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
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                      style: BorderStyle.solid),
                                ),
                                child: Center(
                                  child: Text(
                                    "90%",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                                border: Border.all(
                                    color: Color.fromARGB(43, 236, 236, 236),
                                    width: 1,
                                    style: BorderStyle.solid),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/favourite_1.png'),
                              Image.asset('assets/favourite_1.png'),
                              Image.asset(
                                'assets/favourite_1.png',
                                opacity: const AlwaysStoppedAnimation(.5),
                              )
                            ]),
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
                                      "Xếp hạng",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "1/5",
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
                                      "4600",
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "=  ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "  9200 ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Image.asset("assets/star.png")
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => trangChonCheDo(),
                                    ));
                              },
                              child: Text(
                                'Play again',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ))),
                      Container(
                          decoration: BoxDecoration(
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => manhinhchinh(),
                                    ));
                              },
                              child: Text(
                                'Home',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ))),
                    ])))));
  }
}
