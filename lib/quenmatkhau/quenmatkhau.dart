import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' QUÊN MẬT KHẨU',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(239, 239, 210, 0.62),
            image: DecorationImage(
                image: AssetImage('assets/LOGO1.png'), fit: BoxFit.contain)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 70, 30, 50),
          child: Container(
            margin: EdgeInsets.only(bottom: 150, top: 50),
            decoration: BoxDecoration(
                color: Color.fromARGB(227, 255, 255, 255),
                border: Border.all(
                    width: 3, color: Color.fromARGB(195, 157, 154, 154))),
            child: Container(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40, bottom: 60),
                    child: Text(
                      'QUÊN MẬT KHẨU',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)),
                          labelText: 'Nhập Số Điện Thoại,Email',
                          filled: true,
                          fillColor: Color.fromARGB(255, 204, 185, 185)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 50, 100),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 239, 10, 10),
                        fixedSize: const Size(200, 50),
                        shape: StadiumBorder(),
                        // Background color
                      ),
                      child: const Text(
                        'Lấy Lại Mật Khẩu',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
