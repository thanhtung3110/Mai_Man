import 'package:flutter/material.dart';

class storeicons extends StatefulWidget {
  const storeicons({super.key});

  @override
  State<storeicons> createState() => _storeiconsState();
}

class _storeiconsState extends State<storeicons> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          body: Container(
              child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          color: Colors.amber,
          width: 450,
          height: 80,
          child: Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  icon: Icon(Icons.arrow_back)),
              Text(
                'CỬA HÀNG',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 200,
                    height: 220,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 176, 217, 246),
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 68, 137, 192)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(children: [
                      Image.asset("assets/coin1.png"),
                      Container(
                        child: Text(
                          "7k Coins",
                          style: TextStyle(
                            color: Color.fromARGB(255, 29, 42, 123),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 210,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 91, 161, 214),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 68, 137, 192)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '11.000₫',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 200,
                    height: 220,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 176, 217, 246),
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 68, 137, 192)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(children: [
                      Image.asset("assets/coin1.png"),
                      Container(
                        child: Text(
                          "7k Coins",
                          style: TextStyle(
                            color: Color.fromARGB(255, 29, 42, 123),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 91, 161, 214),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 68, 137, 192)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '11.000₫',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 200,
                    height: 220,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 176, 217, 246),
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 68, 137, 192)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(children: [
                      Image.asset("assets/coin1.png"),
                      Container(
                        child: Text(
                          "7k Coins",
                          style: TextStyle(
                            color: Color.fromARGB(255, 29, 42, 123),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 210,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 91, 161, 214),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 68, 137, 192)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '11.000₫',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 200,
                    height: 220,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 176, 217, 246),
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 68, 137, 192)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(children: [
                      Image.asset("assets/coin1.png"),
                      Container(
                        child: Text(
                          "7k Coins",
                          style: TextStyle(
                            color: Color.fromARGB(255, 29, 42, 123),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 91, 161, 214),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 68, 137, 192)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '11.000₫',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 200,
                    height: 220,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 176, 217, 246),
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 68, 137, 192)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(children: [
                      Image.asset("assets/coin1.png"),
                      Container(
                        child: Text(
                          "7k Coins",
                          style: TextStyle(
                            color: Color.fromARGB(255, 29, 42, 123),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 210,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 91, 161, 214),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 68, 137, 192)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '11.000₫',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 200,
                    height: 220,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 176, 217, 246),
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 68, 137, 192)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(children: [
                      Image.asset("assets/coin1.png"),
                      Container(
                        child: Text(
                          "7k Coins",
                          style: TextStyle(
                            color: Color.fromARGB(255, 29, 42, 123),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 91, 161, 214),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 68, 137, 192)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '11.000₫',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]))),
    ));
  }
}
