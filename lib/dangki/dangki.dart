import 'package:flutter/material.dart';


class dangki extends StatefulWidget {
  const dangki({super.key, required this.title});

  final String title;

  @override
  State<dangki> createState() => _dangkiState();
}

class _dangkiState extends State<dangki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          decoration: new BoxDecoration(
            color: Color.fromRGBO(64, 28, 64, 1),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 50),
            child: Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(185, 0, 0, 0),
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 157, 154, 154))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'ĐĂNG  KÝ',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Tên Truy Cập',
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Mật Khẩu',
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Nhập lại mật khẩu',
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Số Điện Thoại',
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        side: BorderSide(width: 0.5, color: Colors.white),
                        fixedSize: const Size(300, 35),
                        shape: StadiumBorder(),
                      ),
                      child: const Text(
                        'ĐĂNG NHẬP',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
