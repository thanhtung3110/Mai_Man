import 'package:flutter/material.dart';
import 'package:flutter_application_1/trangchu/sale/sale.dart';

class shopitem extends StatefulWidget {
  const shopitem({super.key});

  @override
  State<shopitem> createState() => _shopitemState();
}

class _shopitemState extends State<shopitem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(children: [
              Container(
                color: Colors.deepPurple[300],
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        icon: Icon(Icons.arrow_back)),
                    Text(
                      'Cửa hàng item',
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 161, 166, 239),
                ),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Năng Lượng",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Color.fromARGB(255, 2, 13, 159),
                                ),
                                child: Image.asset("assets/lightning_1.png"))),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Lượt chơi',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          color: Color.fromARGB(255, 13, 108, 16),
                          child: Row(
                            children: [
                              Text(
                                '777 ',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset('assets/star.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 161, 166, 239),
                ),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "50-50",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.orange),
                                child: Image.asset("assets/half.png"))),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'giảm đi 2 câu trả lời sai',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          color: Color.fromARGB(255, 13, 108, 16),
                          child: Row(
                            children: [
                              Text(
                                '7,777 ',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset('assets/star.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 161, 166, 239),
                ),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "nhân đôi điểm",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Color.fromARGB(255, 48, 231, 167),
                                ),
                                child: Image.asset("assets/star_1.png"))),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'x2 điểm của câu ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          color: Color.fromARGB(255, 13, 108, 16),
                          child: Row(
                            children: [
                              Text(
                                '8,000 ',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset('assets/star.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 161, 166, 239),
                ),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "bóng băng",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.red,
                                ),
                                child: Image.asset("assets/snowflake.png"))),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'bạn sẽ được +7s',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          color: Color.fromARGB(255, 13, 108, 16),
                          child: Row(
                            children: [
                              Text(
                                '8,00 ',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset('assets/star.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: sale(),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
