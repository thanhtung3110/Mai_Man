import 'package:flutter/material.dart';
import 'package:flutter_application_1/setting/setiingtronggame.dart';
import 'package:flutter_application_1/trangchu/footer_header/header.dart';
import 'package:flutter_application_1/trangchu/noidung/noidungrangchu.dart';
import 'package:flutter_application_1/trangchu/sale/sale.dart';

import 'footer_header/footer.dart';

class manhinhchinh extends StatefulWidget {
  const manhinhchinh({super.key});

  @override
  State<manhinhchinh> createState() => _manhinhchinhState();
}

class _manhinhchinhState extends State<manhinhchinh> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                body: Container(
                    color: Colors.black,
                    child: Container(
                        child: Column(children: [
                      Header(),
                      trangcontent(),
                      sale(),
                      Footer()
                    ]))))));
  }
}
