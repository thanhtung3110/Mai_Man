import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/db_connect.dart';
import 'package:flutter_application_1/models/question_model.dart';
import 'package:flutter_application_1/trangchu/manhinhchinh.dart';
import 'package:flutter_application_1/trangchu/sale/sale.dart';
import 'Login/Login.dart';
import 'dangki/dangki.dart';
import 'trangchu/footer_header/footer.dart';
import 'trangchu/footer_header/header.dart';
import 'trangchu/noidung/noidungrangchu.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'welcome': (context) => login(),
        'home': (context) => manhinhchinh(),
      },
    );
  }
}
