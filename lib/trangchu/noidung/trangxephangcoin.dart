import 'dart:ffi';

import 'package:flutter/material.dart';

class xephangcoin extends StatefulWidget {
  const xephangcoin({super.key});

  @override
  State<xephangcoin> createState() => _xephangcoinState();
}

class _xephangcoinState extends State<xephangcoin> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Top Coins Sever",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.normal,
              color: Colors.amber,
            ),
          ),
          Container(
            color: Colors.brown,
            width: 500,
            height: 5,
            margin: EdgeInsets.only(bottom: 40),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromARGB(255, 230, 102, 130),
                  ),
                  width: 390,
                  height: 70,
                  margin: EdgeInsets.only(bottom: 2),
                  child: Row(
                    children: [
                      Text(
                        ' 1',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                      Expanded(
                          flex: 2, child: Image.asset("assets/hacker.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'C ng',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '5,277,228',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromARGB(255, 205, 231, 64),
                  ),
                  width: 390,
                  height: 70,
                  margin: EdgeInsets.only(bottom: 2),
                  child: Row(
                    children: [
                      Text(
                        ' 2',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                      Expanded(
                          flex: 2, child: Image.asset("assets/scientist.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Khang',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '2,001,622',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromARGB(255, 49, 195, 56),
                  ),
                  width: 390,
                  height: 70,
                  margin: EdgeInsets.only(bottom: 2),
                  child: Row(
                    children: [
                      Text(
                        ' 3',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                      Expanded(flex: 2, child: Image.asset("assets/cat.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'MmEo',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '1,927,025',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromARGB(255, 139, 140, 154),
                  ),
                  width: 390,
                  height: 70,
                  margin: EdgeInsets.only(bottom: 2),
                  child: Row(
                    children: [
                      Text(
                        ' 4',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                      Expanded(
                          flex: 2, child: Image.asset("assets/superman.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'sUpergirl',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '1,907,025',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromARGB(255, 208, 210, 239),
                  ),
                  width: 390,
                  height: 70,
                  margin: EdgeInsets.only(bottom: 2),
                  child: Row(
                    children: [
                      Text(
                        ' 5',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                      Expanded(flex: 2, child: Image.asset("assets/racer.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'VIpO2',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '1,837,025',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromARGB(255, 25, 19, 95),
                  ),
                  width: 390,
                  height: 70,
                  margin: EdgeInsets.only(bottom: 2),
                  child: Row(
                    children: [
                      Text(
                        ' 6',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(flex: 2, child: Image.asset("assets/boy.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Me',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        '10,000',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 240, 226, 226),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
