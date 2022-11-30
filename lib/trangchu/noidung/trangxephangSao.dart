import 'dart:ffi';

import 'package:flutter/material.dart';

class saocap extends StatefulWidget {
  const saocap({super.key});

  @override
  State<saocap> createState() => _saocapState();
}

class _saocapState extends State<saocap> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Top Điểm Sever",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 65, 70, 128),
            ),
          ),
          Container(
            color: Colors.red,
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
                    color: Color.fromARGB(255, 173, 178, 234),
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
                      Expanded(flex: 2, child: Image.asset("assets/man.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Jack',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '50,000',
                        style: TextStyle(
                          fontSize: 30,
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
                    color: Color.fromARGB(255, 216, 218, 243),
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
                          flex: 2, child: Image.asset("assets/spyware.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Mike',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '45,060',
                        style: TextStyle(
                          fontSize: 30,
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
                    color: Color.fromARGB(255, 173, 178, 234),
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
                      Expanded(flex: 2, child: Image.asset("assets/man_2.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Mono',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '35,891',
                        style: TextStyle(
                          fontSize: 30,
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
                    color: Color.fromARGB(255, 216, 218, 243),
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
                      Expanded(flex: 2, child: Image.asset("assets/man.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Zed',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '34,678',
                        style: TextStyle(
                          fontSize: 30,
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
                    color: Color.fromARGB(255, 173, 178, 234),
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
                      Expanded(flex: 2, child: Image.asset("assets/girl1.png")),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'TLinh',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 70, 128),
                          ),
                        ),
                      ),
                      Text(
                        '23,168',
                        style: TextStyle(
                          fontSize: 30,
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
                    color: Color.fromARGB(255, 79, 72, 158),
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
                        '935',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
