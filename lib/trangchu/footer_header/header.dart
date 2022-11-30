import 'package:flutter/material.dart';

import '../../setting/settingtranghome.dart';
import '../../store/store.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color.fromARGB(255, 100, 150, 218),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(children: [
              Container(
                  color: const Color.fromARGB(188, 255, 255, 255),
                  child: Row(children: [
                    Image.asset("assets/favorite.png"),
                    const Text(
                      " x10",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.amber),
                    )
                  ])),
            ]),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 47, 88, 147),
                    width: 0.1,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(144, 255, 255, 255),
              ),
              child: Row(children: [
                Image.asset("assets/lightning.png"),
                const Text(
                  " 10",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 47, 88, 147)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_sharp,
                        color: Colors.green, size: 32))
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 0.1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(124, 119, 96, 96),
              ),
              child: Row(children: [
                Image.asset("assets/star.png"),
                const Text(
                  " 10,000 ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => storeicons(),
                          ));
                    },
                    icon: const Icon(Icons.add_circle_sharp,
                        color: Colors.green, size: 32))
              ]),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => trangsrttinghome(),
                          ));
                    },
                    icon: const Icon(Icons.settings_suggest_sharp,
                        color: Colors.black, size: 35))
              ],
            )
          ],
        ),
      ),
    );
  }
}
