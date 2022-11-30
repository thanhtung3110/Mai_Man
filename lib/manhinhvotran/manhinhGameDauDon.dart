import 'package:flutter/material.dart';
import 'package:flutter_application_1/manhinhvotran/manHinhThongKe.dart';
import 'package:flutter_application_1/setting/setiingtronggame.dart';
import 'package:flutter_application_1/trangchu/manhinhchinh.dart';

class manhinhvotranDAUDON extends StatefulWidget {
  const manhinhvotranDAUDON({super.key});

  @override
  State<manhinhvotranDAUDON> createState() => _manhinhvotranDAUDONState();
}

class _manhinhvotranDAUDONState extends State<manhinhvotranDAUDON> {
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
                          contextGame(),
                          footerGame(),
                        ],
                      ),
                    )))));
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
                  "2/10",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
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
      child: Row(children: [
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
                    child: Image.asset('assets/half.png')))),
      ]),
    );
  }
}
//footder end

//context
class contextGame extends StatefulWidget {
  const contextGame({super.key});

  @override
  State<contextGame> createState() => _contextGameState();
}

class _contextGameState extends State<contextGame> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        color: Color.fromARGB(255, 64, 4, 60),
        child: Column(children: [
          Container(
            width: 400,
            height: 250,
            color: Color.fromARGB(99, 166, 160, 160),
            child: Text(
              'Các đường tường tượng chạy ngang (cạnh nhau) trên trái đất được gọi là đường _ _ _ .',
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
                Container(
                    margin: EdgeInsets.all(1),
                    width: 390,
                    height: 82.5,
                    color: Color.fromARGB(255, 61, 141, 233),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => manHinhThonhKe(),
                              ));
                        },
                        child: Text(
                          'quả cầu',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ))),
                Container(
                    margin: EdgeInsets.all(1),
                    width: 390,
                    height: 82.5,
                    color: Color.fromARGB(155, 82, 225, 192),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'vĩ độ',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ))),
                Container(
                    margin: EdgeInsets.all(1),
                    width: 390,
                    height: 82.5,
                    color: Color.fromARGB(225, 218, 204, 80),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'đứng xích đạo',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ))),
                Container(
                    margin: EdgeInsets.all(1),
                    width: 390,
                    height: 82.5,
                    color: Color.fromARGB(177, 239, 80, 101),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'kinh độ',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ))),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
//end context