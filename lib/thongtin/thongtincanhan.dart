import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Thongtin extends StatelessWidget {
  const Thongtin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                body: Container(
                    color: Color.fromARGB(255, 58, 128, 163),
                    child: Column(children: [
                      Container(
                        color: Color.fromARGB(255, 78, 196, 90),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                icon: Icon(Icons.arrow_back)),
                            Text(
                              'Thông tin cá nhân',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          height: 500,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 50, 83, 183),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/boy.png'),
                                  ],
                                ),
                                Divider(
                                  thickness: 3,
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Tên đăng nhập',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 218, 227, 191),
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      FirebaseAuth.instance.currentUser!.email!,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 97, 164, 106),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/lightning.png"),
                                        Text(
                                          'x999',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 202, 239, 89),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/favorite.png'),
                                        Text(
                                          '9999',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 192, 243, 40),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/star.png'),
                                        Text(
                                          '9999',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 186, 248, 2),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 3,
                                  color: Colors.black,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/snowflake.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                    Text(
                                      '  999',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 202, 239, 89),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/star_1.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                    Text(
                                      '9999',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 192, 243, 40),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/half.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                    Text(
                                      '9999',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 186, 248, 2),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ]))
                    ])))));
  }
}
