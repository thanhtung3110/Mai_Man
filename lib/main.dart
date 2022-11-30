import 'package:flutter/material.dart';
import 'package:flutter_application_1/trangchu/sale/sale.dart';
import 'Login/Login.dart';
import 'dangki/dangki.dart';
import 'trangchu/footer_header/footer.dart';
import 'trangchu/footer_header/header.dart';
import 'trangchu/noidung/noidungrangchu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: login(),
        ));
  }
}
