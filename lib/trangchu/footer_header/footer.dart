import 'package:flutter/material.dart';
import 'package:flutter_application_1/manhinhgame/manhinhChonCheDogame.dart';
import 'package:flutter_application_1/store/shopitem.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          color: Color.fromARGB(255, 23, 31, 50),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
                //nut mua item
                child: SizedBox(
                    height: 80,
                    width: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 47, 88, 147),
                            side: BorderSide(width: 2, color: Colors.white),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.all(20)),
                        onPressed: () {},
                        child: Image.asset('assets/home.png')))),
            Container(
                //nut vô game
                child: SizedBox(
                    height: 80,
                    width: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            side: BorderSide(width: 3, color: Colors.white),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.all(20)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => trangChonCheDo(),
                              ));
                        },
                        child: Image.asset('assets/playing.png')))),
            Container(
                //nut mua item
                child: SizedBox(
                    height: 80,
                    width: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                            side: BorderSide(width: 3, color: Colors.brown),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.all(20)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => shopitem(),
                              ));
                        },
                        child: Image.asset('assets/weapon.png')))),
          ]),
        ));
  }
}
