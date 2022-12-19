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
                    child: Column(children: [
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
            width: 380,
            height: 200,
            color: Colors.lightBlue,
            child: Column(children: [Row(),],),
          )
        ])))));
  }
}
