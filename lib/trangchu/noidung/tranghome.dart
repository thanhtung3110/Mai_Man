import 'package:flutter/material.dart';
import 'package:flutter_application_1/lichsudau/lichsudau.dart';
import 'package:flutter_application_1/thongtin/thongtincanhan.dart';

class player extends StatefulWidget {
  const player({super.key});

  @override
  State<player> createState() => _playerState();
}

class _playerState extends State<player> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 241, 199, 214),
      child: Row(
        children: [
          Column(children: [
            Container(
                margin: EdgeInsets.all(4),
                child: SizedBox(
                  height: 70,
                  width: 190,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 76, 130, 175),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.all(20)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Thongtin(),
                            ));
                      },
                      child: Text(
                        "Thông tin",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        ),
                      )),
                )),
            Container(
                margin: EdgeInsets.all(3),
                child: SizedBox(
                  height: 70,
                  width: 190,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.all(20)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => lichsudau(),
                            ));
                      },
                      child: Text(
                        "Lịch sử",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        ),
                      )),
                )),
            Container(child: Image.asset('assets/aviator1.png')),
          ]),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(3),
                height: 80,
                width: 200,
                color: Color.fromARGB(186, 41, 128, 214),
                child: Column(
                  children: [
                    Text(
                      'Điểm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Row(children: [
                      Image.asset("assets/favorite.png"),
                      Container(
                        padding: EdgeInsets.only(left: 40),
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "935",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.amber,
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(3),
                height: 80,
                width: 200,
                color: Color.fromARGB(184, 71, 52, 157),
                child: Column(
                  children: [
                    Text(
                      'Coins',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    Row(children: [
                      Container(
                        padding: EdgeInsets.only(left: 40),
                        margin: EdgeInsets.all(6),
                        color: Color.fromARGB(255, 99, 96, 96),
                        child: Text(
                          " 10,000",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Image.asset("assets/star.png"),
                    ]),
                  ],
                ),
              ),
              Container(
                child: Image.asset('assets/LOGO1.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
