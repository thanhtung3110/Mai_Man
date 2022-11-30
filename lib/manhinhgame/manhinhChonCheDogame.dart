import 'package:flutter/material.dart';
import 'package:flutter_application_1/manhinhvotran/manhinhGameDauDon.dart';

class trangChonCheDo extends StatefulWidget {
  const trangChonCheDo({super.key});

  @override
  State<trangChonCheDo> createState() => _trangChonCheDoState();
}

class _trangChonCheDoState extends State<trangChonCheDo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Color.fromARGB(255, 16, 37, 75),
            child: Column(children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        )),
                    Text(
                      'CHẾ ĐỘ CHƠI',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(255, 175, 230, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                color: Colors.white,
              ),
              Container(
                  //nut vô game
                  child: SizedBox(
                      width: 400,
                      height: 300,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 16, 37, 75),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => manhinhvotranDAUDON(),
                                ));
                          },
                          child: Image.asset('assets/1.png')))),
              Container(
                  //nut vô game
                  child: SizedBox(
                      width: 400,
                      height: 300,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 16, 37, 75),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          onPressed: () {},
                          child: Image.asset(
                            'assets/2.png',
                          )))),
            ]),
          ),
        ),
      ),
    );
  }
}
