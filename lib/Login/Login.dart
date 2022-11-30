import 'package:flutter/material.dart';
import 'package:flutter_application_1/trangchu/manhinhchinh.dart';

class login extends StatefulWidget {
  const login({
    super.key,
  });

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 211, 211, 1),
      ),
      child: Column(
        children: [
          Container(
            height: 220,
            width: 200,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/LOGO1.png'),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Text(
              'MAI MẮN',
              style: TextStyle(
                color: Colors.red,
                fontSize: 44,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(176, 146, 188, 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ĐĂNG NHẬP',
                      style: TextStyle(
                        color: Color.fromRGBO(71, 1, 55, 1),
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 140, 0)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => manhinhchinh(),
                                ));
                          },
                          child: const Text(
                            'Đăng ký',
                            style: TextStyle(
                                color: Color.fromARGB(255, 58, 57, 57),
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.only(right: 20)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => manhinhchinh(),
                              ));
                        },
                        child: const Text(
                          'quên mật khẩu ?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 58, 57, 57),
                              fontSize: 15,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: const Size(300, 35),
                        shape: StadiumBorder(),
                        // Background color
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => manhinhchinh(),
                              ));
                        },
                        child: const Text(
                          'ĐĂNG NHẬP',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
