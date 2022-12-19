import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login/Login.dart';

TextEditingController txtEmail = TextEditingController();
TextEditingController txtPassword = TextEditingController();
TextEditingController txtSDT = TextEditingController();

final _auth = FirebaseAuth.instance;

class dangki extends StatefulWidget {
  const dangki({super.key});

  @override
  State<dangki> createState() => _dangkiState();
}

class _dangkiState extends State<dangki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: 500,
        height: 800,
        decoration: new BoxDecoration(
          color: Color.fromRGBO(64, 28, 64, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 70, 30, 50),
          child: Container(
            height: 600,
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
                    controller: txtEmail,
                    keyboardType: TextInputType.emailAddress,
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
                    controller: txtPassword,
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
                    controller: txtSDT,
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
                    onPressed: () async {
                      try {
                        final newUser = _auth.createUserWithEmailAndPassword(
                            email: txtEmail.text, password: txtPassword.text);
                        if (newUser != null) {
                          Navigator.pop(context, 'đăng ký thành công');
                        } else {
                          final snackbar =
                              SnackBar(content: Text('tài khoản không hợp lệ'));
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }
                      } catch (e) {
                        final snackbar = SnackBar(content: Text('Đã có lỗi '));
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login(),
                        ),
                      ).then((value) {
                        if (value != null) {
                          final snackbar = SnackBar(content: Text(value));
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      side: BorderSide(width: 0.5, color: Colors.white),
                      fixedSize: const Size(300, 35),
                      shape: StadiumBorder(),
                    ),
                    child: const Text(
                      'ĐĂNG KÝ',
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
      ),
    ));
  }
}
