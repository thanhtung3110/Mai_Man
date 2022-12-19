import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dangki/dangki.dart';
import 'package:flutter_application_1/trangchu/manhinhchinh.dart';

TextEditingController txtUserName = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtPassword = TextEditingController();
TextEditingController txtReq_Password = TextEditingController();
TextEditingController txtSDT = TextEditingController();

final _auth = FirebaseAuth.instance;

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
        body: SingleChildScrollView(
      child: Container(
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
                        controller: txtEmail,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'email',
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: TextField(
                        controller: txtPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white),
                      ),
                    ),
                    Row(children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 140, 0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dangki()));
                        },
                        child: const Text(
                          'Đăng ký',
                          style: TextStyle(
                              color: Color.fromARGB(255, 58, 57, 57),
                              fontSize: 15,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          try {
                            final _user = _auth.signInWithEmailAndPassword(
                                email: txtEmail.text,
                                password: txtPassword.text);
                            _auth.authStateChanges().listen((event) {
                              if (event != null) {
                                txtEmail.clear();
                                txtPassword.clear();
                                Navigator.pushNamedAndRemoveUntil(
                                    context, 'home', (route) => false);
                              } else {
                                final snackbar = SnackBar(
                                    content: Text(
                                        'email hoặc mật khẩu không đúng!!!'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackbar);
                              }
                            });
                          } catch (e) {
                            final snackbar = SnackBar(
                                content:
                                    Text('email hoặc mật khẩu không đúng'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          fixedSize: const Size(300, 35),
                          shape: StadiumBorder(),
                          // Background color
                        ),
                        child: GestureDetector(
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
      ),
    ));
  }
}
