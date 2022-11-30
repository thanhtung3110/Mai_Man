import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/trangchu/noidung/tranghome.dart';
import 'package:flutter_application_1/trangchu/noidung/trangxephangSao.dart';
import 'package:flutter_application_1/trangchu/noidung/trangxephangcoin.dart';

class trangcontent extends StatefulWidget {
  const trangcontent({super.key});

  @override
  State<trangcontent> createState() => _trangcontentState();
}

class _trangcontentState extends State<trangcontent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 10,
        child: DefaultTabController(
          initialIndex: 1,
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: new Image.asset('assets/man.png'),
                  ),
                  Tab(
                    icon: new Image.asset('assets/podium.png'),
                  ),
                  Tab(
                    icon: new Image.asset('assets/trophy.png'),
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: <Widget>[
                Center(
                  child: player(),
                ),
                Center(
                  child: saocap(),
                ),
                Center(
                  child: xephangcoin(),
                ),
              ],
            ),
          ),
        ));
  }
}
