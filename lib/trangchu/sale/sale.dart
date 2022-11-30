import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../store/shopitem.dart';

class sale extends StatefulWidget {
  const sale({super.key});

  @override
  State<sale> createState() => _saleState();
}

class _saleState extends State<sale> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          flex: 2,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 100),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            items: listBook
                .map((item) => Center(
                      child: Image.asset(item.image),
                    ))
                .toList(),
          )),
    );
  }
}

List<book> listBook = [
  book(image: "assets/saleoff.png"),
  book(image: "assets/saleoff2.png"),
];

class book {
  String image;
  book({required this.image});
}
