import 'package:flutter/material.dart';

class lichsudau extends StatefulWidget {
  const lichsudau({super.key});

  @override
  State<lichsudau> createState() => _lichsudauState();
}

class _lichsudauState extends State<lichsudau> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                body: Container(
          color: Color.fromARGB(255, 6, 64, 111),
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 78, 196, 90),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        icon: Icon(Icons.arrow_back)),
                    Text(
                      'Lịch Sử Đấu',
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 50, 83, 183),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Thắng ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 239, 235),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'thường ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 239, 235),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '20 giờ trước ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 239, 235),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/boy.png'),
                        Row(
                          children: [
                            Image.asset(
                              'assets/snowflake.png',
                              width: 60,
                              height: 60,
                            ),
                            Image.asset(
                              'assets/star_1.png',
                              width: 60,
                              height: 60,
                            ),
                            Image.asset(
                              'assets/half.png',
                              width: 60,
                              height: 60,
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Số câu: 10/10 ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 239, 235),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Điểm :1000 ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 239, 235),
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/star.png'),
                            Text(
                              '+156',
                              style: TextStyle(
                                color: Color.fromARGB(255, 238, 239, 235),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 188, 61, 87),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Thắng ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 239, 235),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'thường ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 239, 235),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '20 giờ trước ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 239, 235),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/boy.png'),
                        Row(
                          children: [
                            Image.asset(
                              'assets/snowflake.png',
                              width: 60,
                              height: 60,
                            ),
                            Image.asset(
                              'assets/star_1.png',
                              width: 60,
                              height: 60,
                            ),
                            Image.asset(
                              'assets/half.png',
                              width: 60,
                              height: 60,
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Số câu: 10/10 ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 239, 235),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Điểm :1000 ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 239, 235),
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/star.png'),
                            Text(
                              '+156',
                              style: TextStyle(
                                color: Color.fromARGB(255, 238, 239, 235),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 50, 83, 183),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Thắng ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 239, 235),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'thường ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 239, 235),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '20 giờ trước ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 239, 235),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/boy.png'),
                        Row(
                          children: [
                            Image.asset(
                              'assets/snowflake.png',
                              width: 60,
                              height: 60,
                            ),
                            Image.asset(
                              'assets/star_1.png',
                              width: 60,
                              height: 60,
                            ),
                            Image.asset(
                              'assets/half.png',
                              width: 60,
                              height: 60,
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Số câu: 10/10 ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 239, 235),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Điểm :1000 ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 239, 235),
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/star.png'),
                            Text(
                              '+156',
                              style: TextStyle(
                                color: Color.fromARGB(255, 238, 239, 235),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ))));
  }
}
